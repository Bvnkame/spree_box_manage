class RemoveDifficultyColumnFromBox < ActiveRecord::Migration
  def change
    remove_column :bm_boxes, :difficulty_id
  end
end
