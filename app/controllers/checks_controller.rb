class ChecksController < ApplicationController
  before_action :check_beta_cookie, only: :index

  def index
    @say = self.class.name
  end

  def bounce
    @foo = "bar"
    @foo = "baz"
    @foo = "bob"
  end
end
