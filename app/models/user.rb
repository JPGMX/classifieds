class User < ActiveRecord::Base
  attr_accessible :address, :adress, :email, :last_name, :name, :password, #:admin
  attr_accessible :address, :adress, :email, :last_name, :name, :password, :admin, as: :admin
  
  has_secure_password
  has_many: adverts
end
