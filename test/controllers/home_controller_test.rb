require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "the truth" do
    ApplicationController.any_instance.stubs(:current_user).returns(nil)
    ENV['CODE'] = 'false'
    get "/home?x=falsey"
    assert_equal 302, status

    get "/home?x=false"
    assert_equal 200, status
  end
end
