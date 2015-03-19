module Bm
  class Box < ActiveRecord::Base
    self.table_name = "bm_boxes"
    has_many :products , through: :boxdetails, :class_name => "Spree::Product"
    has_one :users, :class_name => "Spree::User", foreign_key: 'spree_user_id'
    has_many :boxdetails, :class_name => "Bm::BoxDetail", foreign_key: 'bm_box_id'
  end
end