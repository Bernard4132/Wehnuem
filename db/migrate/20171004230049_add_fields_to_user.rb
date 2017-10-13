class AddFieldsToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :firstname, :string
  	add_column :users, :lastname, :string
  	add_column :users, :phonenumber, :string
  	add_column :users, :housenumber, :string
  	add_column :users, :gender, :string
  end
end
