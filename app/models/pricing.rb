class Pricing
  def initialize(plan, seats)
    @plan = plan
    @seats = seats
  end

  def monthly_total
    if @plan == "pro"
      279 + extra_seats * 10
    else
      69 + extra_seats * 5
    end
  end

  def extra_seats
    [@seats - 5, 0].max
  end

  def label
    case @plan
    when "pro" then "Pro"
    when "essentials" then "Essentials"
    else "Open Source"
    end
  end

  def discount(code)
    if code == "WINTER"
      monthly_total * 0.1
    elsif code == "STUDENT"
      monthly_total * 0.5
    else
      0
    end
  end

  def trial_days
    @plan == "pro" ? 14 : 7
  end

  def invoice_lines
    lines = []
    lines << "#{label} plan"
    lines << "#{extra_seats} extra seats" if extra_seats.positive?
    lines
  end

  def currency_symbol(country)
    return "€" if %w[AT DE FR].include?(country)
    return "£" if country == "GB"

    "$"
  end

  def annual_total
    monthly_total * 12 * 0.9
  end
end
