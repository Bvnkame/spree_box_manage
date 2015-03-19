class CreateSpreeBoxDetails < ActiveRecord::Migration
  def change
    create_table :bm_box_details do |t|
      t.integer :bm_box_id
      t.integer :spree_product_id
      t.timestamps
    end
  end
end
