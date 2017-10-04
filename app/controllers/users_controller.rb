class UsersController < ApplicationController
  def new
    #code
  end
  def create
    user = User.create(user_params)
    if user
        flash[:success] = "Register successfully."
        redirect_to login_path
    else
        flash[:error] = "Can't register new user."
        render :new
    end
  end
  def user_params
    params.require(:user).permit(:user_name, :email, :password)
  end
end
