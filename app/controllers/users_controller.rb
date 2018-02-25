class UsersController < ApplicationController
  before_action :user_login

  def show
    @nickname = current_user.nickname
    @select_course = Content.find(current_user.select_course)
    @progress = Progress.new
    # 進捗の際にレコードが存在するかどうかを検証する必要がある。
    if Progress.where(user_id: current_user.id, progress: 1) && Progress.where(user_id: current_user.id, progress: 2)
      @sum_progress = (Progress.where(user_id: current_user.id, progress: 1).count) + (Progress.where(user_id: current_user.id, progress: 2).count)*2
    elsif Progress.where(user_id: current_user.id, progress: 1)
      @sum_progress = (Progress.where(user_id: current_user.id, progress: 1).count)
    elsif Progress.where(user_id: current_user.id, progress: 2)
      @sum_progress = (Progress.where(user_id: current_user.id, progress: 2).count)
    else
      @sum_progress = 0
    end
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
