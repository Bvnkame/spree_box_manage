class ChangeTypeColumnTimeCookToDecimal < ActiveRecord::Migration
  def change
    change_column :bm_boxes, :time_cook, 'decimal USING CAST(time_cook AS decimal)'
  end
end
