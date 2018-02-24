class TweetsController < ApplicationController
  def index
    @tweets = Comment.all.order('created_at DESC')
  end

  def new
  end
end
