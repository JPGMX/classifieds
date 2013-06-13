class User < ActiveRecord::Base
  attr_accessible :address, :adress, :email, :last_name, :name, :password, :admin
  has_secure_password
end
