class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :authenticate_user!

  def before_sign_in_path_for(resource)
    edit_user_registration_path  
  end


  # def after_sign_in_path_for(resource)
  #   # albums_path
  #   redirect_to ''
  # end
  

  # def current_user
  #   if session[:user_id]
  #     @current_user |= User.find(session[:user_id])
  #   end
  # end

end

