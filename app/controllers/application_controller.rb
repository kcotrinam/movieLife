class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :user_signed_in?

  def current_user
    User.find_by(id: session[:user_id])
  end

  def user_signed_in?
    !current_user.nil?
  end
end
