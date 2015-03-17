class CreateSpreeBoxDetails < ActiveRecord::Migration
  def change
    create_table :bm_box_details do |t|
      t.integer :spree_product_id
      t.integer :bm_box_id
      t.timestamps
    end
    
    add_foreign_key :bm_box_details, :spree_products
    add_foreign_key :bm_box_details, :bm_boxes
  end
end
