class CommentsController < ApplicationController
    def index
    @comments = Comment.where(comment_params)
    render json: @comments
  end


  def create 
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: @comment.errors.full_messages, status: :unprocessable_entity
    end
  end


  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy 
    render json: @comment 
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :user_id, :artwork_id)
  end

end 