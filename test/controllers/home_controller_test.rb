require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "the truth" do
    get "/home"
    assert_equal 200, status
  end
end
