class CreateWehnleads < ActiveRecord::Migration[5.1]
  def change
    create_table :wehnleads do |t|
      t.string :name
      t.string :email
      t.string :phonenumber

      t.timestamps
    end
  end
end
