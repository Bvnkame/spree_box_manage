class SpreeBox < ActiveRecord::Base
  has_many :spree_products , through: :spree_box_details
end
