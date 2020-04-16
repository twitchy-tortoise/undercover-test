class ApplicationController < ActionController::Base
  private

  def check_current_user
    redirect_to root_url if current_user.nil?
  end
end
