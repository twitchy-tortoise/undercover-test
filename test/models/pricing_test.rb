require 'test_helper'

class PricingTest < ActiveSupport::TestCase
  test "essentials monthly total" do
    assert_equal 69, Pricing.new("essentials", 3).monthly_total
  end
end
