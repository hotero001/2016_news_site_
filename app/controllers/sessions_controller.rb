class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(username: params[:username]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Logged in successfully"
      redirect_to root_path
    else
    	flash[:error] = "There was something wrong with your password or username"
    	redirect_to login_path
    	flash[:error] = "There was something wrong with your password or username"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have logged out."
    redirect_to root_path
  end
end
