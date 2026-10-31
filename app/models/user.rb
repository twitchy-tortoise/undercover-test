class User < ApplicationRecord
  def email_domain
    return if email.blank?

    email.split("@").last
  end
end
