class Advert < ActiveRecord::Base
  attr_accessible :category_id, :contact_details, :description, :title, :user_id, :approved, :image
  belongs_to :category
  belongs_to :user
  
  has_attached_file :image
end