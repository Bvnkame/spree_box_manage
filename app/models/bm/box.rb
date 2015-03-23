module Bm
  class Box < ActiveRecord::Base
    self.table_name = "bm_boxes"
    has_many :products , through: :boxdetails, :class_name => "Spree::Product"
    has_one :users, :class_name => "Spree::User", foreign_key: 'spree_user_id'
    belongs_to :experts, :class_name => "Bm::Expert", foreign_key: 'bm_expert_id'
    has_many :boxdetails, :class_name => "Bm::BoxDetail", foreign_key: 'bm_box_id'

    has_attached_file :cover,
      :styles => {
        :medium => "300x300>",
        :thumb => "100x100>"
      },
      :default_url => "box/default_box.png"
    validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
  end
end