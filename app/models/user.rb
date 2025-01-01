# email:string
# password_digest:string
# password:string virtual
# password:confirmation:string virtual

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, format: { with: /\^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/, message: "Please enter a valid email address"}
end
