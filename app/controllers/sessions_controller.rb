class SessionsController < ApplicationController
  def new
    user = User.find_by_username(params[:username])
  end

  def create
    user = User.find_by_username(params[:username])
    if user
      session[:user_id] = user.id
      redirect_to root_path, flash: {access: "Successfully logged-in!"}
    else
      redirect_to sign_in_path, flash: {warning: "Username doesn't exist"}
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Good bye!'
  end
end
