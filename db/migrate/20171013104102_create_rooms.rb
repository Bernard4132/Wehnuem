class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :house_id
      t.integer :project_id

      t.timestamps
    end
  end
end
