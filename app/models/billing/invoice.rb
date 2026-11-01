module Billing
  class Invoice
    def initialize(amount)
      @amount = amount
    end

    def total_with_vat(rate)
      return @amount if rate.zero?

      (@amount * (1 + rate)).round(2)
    end
  end
end
