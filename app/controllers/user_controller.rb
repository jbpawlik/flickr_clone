class UserController < ApplicationController
  before_action :authenticate_user!
  # before_action :only_see_own_page, only: [:index]

  def index
  end

  def show
  end 

#   def only_see_own_page
#     @user = User.find(params[:id])
  
#     if current_user != @user
#       redirect_to root_path, notice: "Sorry, but you are only allowed to view your own profile page."
#     end
#   end
# end
