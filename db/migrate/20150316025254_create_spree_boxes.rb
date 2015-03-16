class CreateSpreeBoxes < ActiveRecord::Migration
  def change
    create_table :spree_boxes do |t|
      t.string :name
      t.text :comment
      t.timestamps
    end
  end
end
