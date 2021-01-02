class SessionsController < ApplicationController
  def new;end

  def create
    user = User.find_by_username(params[:username])
    if user
      session[:user_id] = user.id
      redirect_to root_path, flash: { success: 'Successfully logged-in!' }
    else
      redirect_to sign_in_path, flash: { errors: "Username doesn't exist" }
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, flash: { errors: 'Good bye!' }
  end
end
