class User < ApplicationRecord
  validates :email, presence: true, email_format: { message: 'is not a valid email address' }
end
