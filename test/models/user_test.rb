require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "email_domain is the part after @" do
    assert_equal "example.com", User.new(email: "jan@example.com").email_domain
  end

  test "email_domain is nil without an email" do
    assert_nil User.new(email: "").email_domain
  end
end
