class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    albums_path
  end
  

  # def current_user
  #   if session[:user_id]
  #     @current_user |= User.find(session[:user_id])
  #   end
  # end

end

