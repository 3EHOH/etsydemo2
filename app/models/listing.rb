class Listing < ActiveRecord::Base
  attr_accessible :description, :name, :price, :image
  has_attached_file :image, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "sample - Copy.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
