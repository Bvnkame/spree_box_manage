module Bm
  class BoxDetail < ActiveRecord::Base
    self.table_name = "bm_box_details"
    belongs_to :products, :class_name => "Spree::Product", foreign_key: "spree_product_id"
    belongs_to :boxes, :class_name => "Bm::Box", foreign_key: "bm_box_id"
  end
end