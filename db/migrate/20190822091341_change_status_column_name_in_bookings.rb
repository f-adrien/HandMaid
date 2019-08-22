class ChangeStatusColumnNameInBookings < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :status, :cleaner_status
  end
end
