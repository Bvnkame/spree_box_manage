class SpreeBox < ActiveRecord::Base
  has_many :spree_products , through: :spree_box_details
  has_many :spree_box_details, :class_name => "SpreeBoxDetail"
  
  
end
