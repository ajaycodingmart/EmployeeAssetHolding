class AddEmployeeRefToAssets < ActiveRecord::Migration[5.1]
  def change
    add_reference :assets, :employee, foreign_key: true
  end
end
