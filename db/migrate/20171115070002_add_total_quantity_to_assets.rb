class AddTotalQuantityToAssets < ActiveRecord::Migration[5.1]
  def change
    add_column :assets, :total_quantity, :numeric
  end
end
