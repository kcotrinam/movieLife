class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User successfully created"
      session[:user_id] = @user_id
      redirect_to root_url
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :email)
  end
end
