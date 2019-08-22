class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :location, :string
    add_column :users, :phone_number, :string
  end
end
