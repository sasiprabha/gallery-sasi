class Shop < ActiveRecord::Base
  attr_accessible :address, :name, :phone_no, :password, :password_confirmation
  validates :name, presence:true, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
