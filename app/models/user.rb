class User < ApplicationRecord
  def email_domain
    return if email.blank?

    email.split("@").last
  end

  def display_name
    return "Anonymous" if email.blank?

    email.split("@").first.capitalize
  end
end
