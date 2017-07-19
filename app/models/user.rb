class User < ApplicationRecord
  authenticates_with_sorcery!

  def authenticate(password_attempt)
    valid_password?(password_attempt)
  end
end
