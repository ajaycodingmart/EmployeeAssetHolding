class CreateAssets < ActiveRecord::Migration[5.1]
  def change
    create_table :assets do |t|
      t.string :name
      t.string :asset_id
      t.text :description
      t.numeric :quantity_avaliable
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
