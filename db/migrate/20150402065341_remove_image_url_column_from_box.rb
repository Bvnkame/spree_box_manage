class RemoveImageUrlColumnFromBox < ActiveRecord::Migration
  def change
    remove_column :bm_boxes, :image_url
  end
end
