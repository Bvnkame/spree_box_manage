class CreateSpreeExpert < ActiveRecord::Migration
  def change
    create_table :bm_experts do |t|
      t.string :name
      t.string :title
      t.text :comment
      t.string :image_url
      t.timestamps
    end
  end
end
