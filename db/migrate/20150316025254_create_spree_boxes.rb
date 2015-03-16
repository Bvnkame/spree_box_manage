class CreateSpreeBoxes < ActiveRecord::Migration
  def change
    create_table :spree_boxes do |t|
      t.timestamps
    end
  end
end
