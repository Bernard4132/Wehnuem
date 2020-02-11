class AddMerefToWehnleads < ActiveRecord::Migration[5.1]
  def change
    add_column :wehnleads, :meref, :string
  end
end
