class BoxModifyColumnStoreToStory < ActiveRecord::Migration
  def change
    rename_column :bm_boxes, :store, :story
  end
end
