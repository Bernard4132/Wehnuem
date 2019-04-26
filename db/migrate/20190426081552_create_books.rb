class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :phonenumber
      t.string :email
      t.datetime :schedate
      t.text :addinf

      t.timestamps
    end
  end
end
