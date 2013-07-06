class User < ActiveRecord::Base
  attr_accessible :nickname, :password, :password_confirmation

  has_many :reviews

  has_secure_password
end
