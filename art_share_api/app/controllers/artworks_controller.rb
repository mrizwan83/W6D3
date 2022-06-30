class ArtworksController < ApplicationController
  def index
    # @artwork = Artwork.all 
    # render json: @artwork
    # if params[:user_id]
    #   render json: Artwork.users(params[:user_id])
    # end 

      @user = User.find(params[:user_id])
      render json: [@user.artworks, @user.shared_artworks].flatten

    # render json: {@user.artworks => @artwork, @user.shared_artworks => @shared_artworks }


  end

  def show 
    @artwork = Artwork.find(params[:id])
    render json: @artwork
  end

  def create 
    @artwork = Artwork.new(artwork_params)
    if @artwork.save
      redirect_to artwork_url(@artwork)
    else
      render json: @artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update 
    @artwork = Artwork.find(params[:id])
    if @artwork.update(artwork_params)
      redirect_to artwork_url(@artwork)
    else
      render json: @artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy 
    redirect_to artworks_url
  end
  private
  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end