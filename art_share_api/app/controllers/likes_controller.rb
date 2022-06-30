class LikesController < ApplicationController
     
  def index
    @likes = Like.where(like_params)
    render json: @likes
  end


  def create 
    @like = Like.new(like_params)
    if @like.save
      render json: @like
    else
      render json: @like.errors.full_messages, status: :unprocessable_entity
    end
  end


  def destroy
    @like = Like.find(params[:id])
    @like.destroy 
    render json: @like 
  end

  private
  def like_params
    params.require(:like).permit(:likes_id, :user_id, :artwork_id)
  end
end 