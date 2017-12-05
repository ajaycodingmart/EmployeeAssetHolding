class ChangeAssetQuantityUsedDefaults < ActiveRecord::Migration[5.1]
  def change
  	change_column :assets, :quantity_used, :integer
    change_column :assets, :quantity_avaliable, :integer
  end
end
