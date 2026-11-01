module Billing
  class LateFee
    def amount(days)
      days > 30 ? 25 : 10
    end
  end
end
