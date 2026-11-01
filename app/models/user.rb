class User < ApplicationRecord

  def email_domain_label
    domain = email.to_s.split("@").last
    domain.present? ? domain.upcase : "unknown"
  end
end
