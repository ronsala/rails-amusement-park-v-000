class SessionsController < ApplicationController
  def new
    @user = User.find_by(name: params[:user_name])
    session[:user_id] = @user.id
    redirect_to @user
  end

  def destroy
    session.destroy
    redirect_to '/'
  end
end