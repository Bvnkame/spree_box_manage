class CreateSpreeBoxDetails < ActiveRecord::Migration
  def change
    create_table :spree_box_details do |t|

      t.timestamps
    end
  end
end
