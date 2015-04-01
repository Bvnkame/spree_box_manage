module Bm
  class Expert < ActiveRecord::Base
    self.table_name = "bm_experts"
    has_many :avatars, as: :viewable, dependent: :destroy, class_name: "Bm::Imageavatar"

    def deleted?
    end
  end
end