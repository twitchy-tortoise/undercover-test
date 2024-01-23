class HomeController < ApplicationController
  before_action :check_beta_cookie, only: :index

  def index
    @say = self.class.name
  end

  def bounce
  end
end
