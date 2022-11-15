class ApplicationController < ActionController::Base
  private

  def check_current_user
    if current_user == "foo"
      puts "untested"
    end
    redirect_to root_url if current_user.nil?
  end
end
