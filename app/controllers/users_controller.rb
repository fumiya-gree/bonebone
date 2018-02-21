class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @select_course = current_user.select_course
  end
end
