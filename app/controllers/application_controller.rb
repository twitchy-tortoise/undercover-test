class ApplicationController < ActionController::Base
  def check_cookie
    if params[:x] != ENV.fetch("CODE", "beta")
      redirect_to(bounce_home_index_url) and return
    end

    cookies[:beta_sign_in] = { value: 1, expires: 1.year }
  end

  private

  def check_beta_cookie
    redirect_to(bounce_home_index_url) and return if params[:x] != ENV.fetch("BETA_CODE", "beta")

    cookies[:beta_sign_in] = { value: 1, expires: 1.year }
  end
end
