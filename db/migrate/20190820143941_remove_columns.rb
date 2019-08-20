class RemoveColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :additional_minutes
  end
end
