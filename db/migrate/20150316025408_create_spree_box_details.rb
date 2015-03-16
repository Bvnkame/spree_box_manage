class CreateSpreeBoxDetails < ActiveRecord::Migration
  def change
    create_table :spree_box_details do |t|
      t.references :spree_products
      t.references :spree_boxes
      t.timestamps
    end
  end
end
