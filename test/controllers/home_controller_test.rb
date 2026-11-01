require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "the truth" do
    ApplicationController.any_instance.stubs(:current_user).returns(nil)
    ENV['BETA_CODE'] = 'false'
    get "/home?x=falsey"
    assert_equal 302, status

    get "/home?x=false"
    assert_equal 200, status
  end

  test "shows the greeting param" do
    ENV['BETA_CODE'] = 'beta'
    get "/home?x=beta&greeting=Howdy"
    assert_equal 200, status
    assert_includes response.body, "<p>Howdy</p>"
  end

  test "redirects to bounce with a notice without the beta code" do
    ENV['BETA_CODE'] = 'beta'
    get "/home?x=nope"
    assert_redirected_to bounce_home_index_url
    follow_redirect!
    assert_includes response.body, "<p>Beta code required</p>"
  end

  test "skips the beta check with a beta cookie" do
    ENV['BETA_CODE'] = 'beta'
    cookies[:beta_sign_in] = "1"
    get "/home"
    assert_equal 200, status
  end
end
