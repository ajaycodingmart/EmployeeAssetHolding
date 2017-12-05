class CreateJoinTableAssetUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :assets, :users do |t|
    	t.index [:asset_id, :user_id]
    end
  end
end
