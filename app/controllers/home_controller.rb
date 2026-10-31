class HomeController < ApplicationController
  before_action :check_beta_cookie, only: :index

  def index
  end

  def bounce
  end

  private

  def beta_cookie_expired?
    cookies[:beta_sign_in].blank?
  end
end
