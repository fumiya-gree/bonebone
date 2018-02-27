class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order('created_at DESC')
  end

  def new
  end

  def create
    Comment.create(text: comment_params[:text], user_id: current_user.id)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    comment = Comment.find(params[:id])
    if current_user.id == comment.user_id
      comment.update(comment_params)
    end
  end

  def destroy
    comment = Comment.find(params[:id])
      if comment.user_id == current_user.id
        comment.destroy
      end
  end



  private
    def comment_params
      params.permit(:text)
    end

end



