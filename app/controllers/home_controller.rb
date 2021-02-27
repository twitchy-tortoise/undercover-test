class HomeController < ApplicationController
  before_action :check_beta_cookie

  def index
  end
end
