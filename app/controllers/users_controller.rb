class UsersController < ApplicationController
  before_action :user_login

  def show
    @nickname = current_user.nickname
    @select_course = current_user.select_course
    @progress = Progress.new
    # @sum_progress = Progress.user_id
    # @user_id = current_user.id
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
