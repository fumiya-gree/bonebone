class UsersController < ApplicationController
  before_action :user_login

  def show
    @nickname = current_user.nickname
    @select_course = Content.find(current_user.select_course)
    @progress = Progress.new
    # 進捗の際にレコードが存在するかどうかを検証する必要がある。
    @sum_progress = 0
    point_1 = Progress.where(user_id: current_user.id, progress: 1)&.count
    point_2 = Progress.where(user_id: current_user.id, progress: 2)&.count
    @sum_progress += point_1||0
    @sum_progress += point_2||0

    @comments = Comment.where(user_id: current_user.id)
  end

  def save
    progress = Progress.new
    progress.user_id = current_user.id
    progress.progress =params[:progress][:progress]
    progress.save
  end

  private
  def user_login
    unless user_signed_in?
      # ログインしていなければログインしていない状態でも観れるページに飛ばしたい
      redirect_to new_user_registration_path
    end
  end
end
