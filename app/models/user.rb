class User < ApplicationRecord
  def initials
    return "?" if email.blank?

    email.split("@").first.scan(/\b\w/).join.upcase
  end
end
