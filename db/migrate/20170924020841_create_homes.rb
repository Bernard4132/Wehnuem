class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :email
      t.string :phonenumber
      t.string :employmentstatus
      t.string :occupation

      t.timestamps
    end
  end
end
