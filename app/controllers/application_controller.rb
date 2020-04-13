class ApplicationController < ActionController::Base
  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def check_current_user
    redirect_to root_url if current_user.nil?
  end
end
