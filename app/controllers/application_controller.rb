class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
   user_url(resource)
  end

  def after_sign_out_path_for(resource)
    '/'
  end

  def configure_permitted_parameters
    binding.pry
    devise_parameter_sanitizer.permit(:sign_up){|u| u.permit(:date_sun,:date_sat,:date_fri,:date_thu,:date_wed,:date_tue,:date_mon ,:nickname, :select_course, :email, :name, :password, :password_confirmation)}
  end
end
