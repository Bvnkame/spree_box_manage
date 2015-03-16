class SpreeBoxDetail < ActiveRecord::Base
  belongs_to :spree_products
  belongs_to :spree_boxes
end