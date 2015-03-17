module Bm
  class Box < ActiveRecord::Base
    self.table_name = "bm_boxes"
    has_many :products , through: :boxdetails, :class_name => "Spree::Product"
    has_many :boxdetails, :class_name => "Bm::BoxDetail", foreign_key: 'bm_box_id'
  end
end