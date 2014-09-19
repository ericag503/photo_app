class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def current_account
    @current_account ||= Account.find(session[:account_id]) if session[:account_id]
  end
  helper_method :current_account

  def authorize
    redirect_to

  end
end
