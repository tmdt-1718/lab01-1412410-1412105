class SessionsController < ApplicationController
  def new
    #code
  end
  def create
      user = User.find_by_user_name(params[:session][:user_name])
      if user && user.password == params[:session][:password]
        session[:current_user] = user
        flash[:success] = "Login successfully."
        redirect_to home_path
      else
        flash[:error] = "Wrong user or password."
        render :new
      end
  end

  def destroy
    session.delete(:current_user)
    redirect_to login_path
  end

  private
  def session_params
    params.require(:session).permit(:user_name, :password)
  end
end
