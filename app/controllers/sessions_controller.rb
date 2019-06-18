class SessionsController < ApplicationController
  def new
    @users = User.all
    render '/sessions/signin'
  end

  def create
    @user = User.find(params[:user_id])
    session[:user_id] = @user.id
    redirect_to @user
  end

  def destroy
    session.destroy
    redirect_to '/'
  end
end