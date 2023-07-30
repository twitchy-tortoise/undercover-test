class HomeController < ApplicationController
  before_action :check_beta_cookie, only: :index

  def index
  end

  def bounce
  end
end
