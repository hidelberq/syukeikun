class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_user
  	@current_user ||= User.find(session[:current_user_id]) if session[:current_user_id]
  	@current_user
  end
  helper_method :current_user

  def current_user=(user)
  	session[:current_user_id] = user.id
  end
  helper_method :current_user=
end
