module Bm
  class Box < ActiveRecord::Base
    self.table_name = "bm_boxes"
    has_many :products , through: :boxdetails, :class_name => "Spree::Product"
    belongs_to :users, :class_name => "Spree::User", foreign_key: 'spree_user_id'
    belongs_to :expert, :class_name => "Bm::Expert", foreign_key: 'bm_expert_id'
    has_many :boxdetails, :class_name => "Bm::BoxDetail", foreign_key: 'bm_box_id'
  
    has_many :covers, as: :viewable, dependent: :destroy, class_name: "Bm::Imagecover"
    #alias_method :images, :master_images

    def deleted?
    end
  end
end