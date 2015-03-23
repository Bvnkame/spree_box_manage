class AddAttachmentCoverToBmBoxes < ActiveRecord::Migration
  def self.up
    change_table :bm_boxes do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :bm_boxes, :cover
  end
end
