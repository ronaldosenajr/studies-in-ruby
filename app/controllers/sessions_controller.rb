# frozen-string-literal: true

# create a session controller
class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user&.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
