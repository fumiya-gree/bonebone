class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order('created_at DESC')
  end

  def new
  end
end
