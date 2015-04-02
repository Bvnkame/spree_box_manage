class RemoveTimeCookColumnFromBox < ActiveRecord::Migration
  def change
    remove_column :bm_boxes, :time_cook
  end
end
