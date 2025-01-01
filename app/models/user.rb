# email:string
# password_digest:string
# password:string virtual
# password:confirmation:string virtual

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, email_format: { message: "The email address is invalid" }
end
