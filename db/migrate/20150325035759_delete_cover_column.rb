class DeleteCoverColumn < ActiveRecord::Migration
  def change
    remove_attachment :bm_boxes, :cover
  end
end
