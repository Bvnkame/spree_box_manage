class RemoveDescriptionColumnFromBox < ActiveRecord::Migration
  def change
    remove_column :bm_boxes, :description
  end
end
