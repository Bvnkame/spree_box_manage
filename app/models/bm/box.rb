module Bm
  class Box < ActiveRecord::Base
    self.table_name = "bm_boxes"
    has_many :products , through: :boxdetails, :class_name => "Spree::Product"
    belongs_to :users, :class_name => "Spree::User", foreign_key: 'spree_user_id'
    belongs_to :difficulties, :class_name => "Bm::Dificulty", foreign_key: 'difficulty_id'
    belongs_to :experts, :class_name => "Bm::Expert", foreign_key: 'bm_expert_id'
    has_many :boxdetails, :class_name => "Bm::BoxDetail", foreign_key: 'bm_box_id'
  
    has_many :covers, as: :viewable, source: :images, dependent: :destroy, class_name: "Bm::Imagecover"
    #alias_method :images, :master_images
  end
end