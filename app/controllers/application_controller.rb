class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= Tutor.find_by(id: session[:tutor_id])
  end

  def logged_in?
    current_user.present?
  end

  #makes the current_user controller method available to the view
  helper_method :current_user, :logged_in?
end
