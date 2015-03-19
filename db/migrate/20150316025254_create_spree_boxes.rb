class CreateSpreeBoxes < ActiveRecord::Migration
  def change
    create_table :bm_boxes do |t|
      t.integer :spree_user_id
      t.string :name
      t.string :description
      t.text :comment
      t.timestamps
    end
  end
end
