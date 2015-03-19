class CreateSpreeBoxes < ActiveRecord::Migration
  def change
    create_table :bm_boxes do |t|
      t.integer :spree_user_id
      t.integer :bm_expert_id
      t.string :name
      t.string :image_url
      t.text  :store
      t.string :time_cook
      t.string :description
      t.string :recipe_link
      t.string :dificulty
      t.timestamps
    end
  end
end
