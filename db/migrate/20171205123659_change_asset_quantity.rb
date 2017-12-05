class ChangeAssetQuantity < ActiveRecord::Migration[5.1]
  def change
  	change_column :assets, :quantity_used, :integer, :default => 0
    change_column :assets, :quantity_avaliable, :integer, :default => 0
  end
end
