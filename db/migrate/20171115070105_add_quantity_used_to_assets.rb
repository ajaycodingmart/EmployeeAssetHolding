class AddQuantityUsedToAssets < ActiveRecord::Migration[5.1]
  def change
    add_column :assets, :quantity_used, :numeric
  end
end
