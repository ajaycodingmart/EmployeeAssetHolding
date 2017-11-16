class CreateJoinTableAssetEmployee < ActiveRecord::Migration[5.1]
  def change
    create_join_table :assets, :employees do |t|
    	t.index [:asset_id, :employee_id]
    end
  end
end
