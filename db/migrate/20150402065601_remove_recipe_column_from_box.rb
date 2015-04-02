class RemoveRecipeColumnFromBox < ActiveRecord::Migration
  def change
    remove_column :bm_boxes, :recipe_link
  end
end
