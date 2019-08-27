class ChangeColumnCleanerStatusInBookings < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :cleaner_status, :status
  end
end
