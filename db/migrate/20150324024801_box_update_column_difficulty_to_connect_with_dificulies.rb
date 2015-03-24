class BoxUpdateColumnDifficultyToConnectWithDificulies < ActiveRecord::Migration
  def change
    rename_column :bm_boxes, :difficulty, :difficulty_id
    change_column :bm_boxes, :difficulty_id, 'integer USING CAST(difficulty_id AS integer)'
  end
end
