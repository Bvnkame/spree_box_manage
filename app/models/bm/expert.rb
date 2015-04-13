module Bm
  class Expert < ActiveRecord::Base
    #acts_as_list
    self.table_name = "bm_experts"
    has_one :avatar, as: :viewable, dependent: :destroy, class_name: "Bm::Imageavatar", inverse_of: :expert

    accepts_nested_attributes_for :avatar, allow_destroy: true, reject_if: lambda { |pp| pp[:attachment].blank? }

    def deleted?
    end
  end
end