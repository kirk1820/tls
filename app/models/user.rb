class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  validates :email, presence: true, uniqueness: true
  normalizes :email, with: ->(email) { email.downcase }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
end

def full_name
  "#{first_name} #{last_name}"
end
