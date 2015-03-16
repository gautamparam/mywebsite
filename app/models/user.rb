class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates(:name, presence: true, length: {maximum: 70})
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates(:email, presence: true, length: {maximum: 150},
    uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX})
  has_secure_password
  validates :password, length: {minimum: 7}
end
