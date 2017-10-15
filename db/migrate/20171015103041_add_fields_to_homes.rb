class AddFieldsToHomes < ActiveRecord::Migration[5.1]
  def change
    add_column :homes, :location, :string
    add_column :homes, :status, :string
    add_column :homes, :dependants, :string
    add_column :homes, :salary, :string
  end
end
