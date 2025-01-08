class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  validates :email, presence: true, uniqueness: true
  validates :firstname, presence: true
  validates :surname, presence: true
  validates :dob, presence: true
end
