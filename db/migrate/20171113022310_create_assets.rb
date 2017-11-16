class CreateAssets < ActiveRecord::Migration[5.1]
  def change
    create_table :assets do |t|
      t.string :name
      t.string :asset_model_id
      t.text :description
      t.numeric :quantity_avaliable
      t.numeric :quantity_used
      t.references :company, foreign_key: true
      t.references :employee, index: true
      t.timestamps
    end
  end
end
