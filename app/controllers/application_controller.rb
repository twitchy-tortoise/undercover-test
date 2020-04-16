class ApplicationController < ActionController::Base
  private

  def auth_and_parse
    check_current_user
    parse_and_validate_webhook(request.body.read)
  end

  def check_current_user
    redirect_to root_url if current_user.nil?
  end
end
