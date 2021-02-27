class ApplicationController < ActionController::Base
  private

  def check_beta_cookie
    redirect_to(root_url) and return if params[:x] != ENV.fetch("BETA_CODE")

    cookies[:beta_sign_in] = { value: 1, expires: 1.year }
    parse_and_validate_webhook(request.body.read)
  end

  def check_current_user
    redirect_to root_url if current_user.nil?
  end
end
