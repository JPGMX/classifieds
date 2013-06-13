class User < ActiveRecord::Base
  attr_accessible :address, :email, :name, :password
  attr_accessible :address, :email, :name, :password, :admin, as: :admin
    has_secure_password
   has_many :adverts
end
