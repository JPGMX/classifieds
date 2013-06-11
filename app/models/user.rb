class User < ActiveRecord::Base
  attr_accessible :address, :adress, :email, :last_name, :name, :password
  has_secure_password
end
