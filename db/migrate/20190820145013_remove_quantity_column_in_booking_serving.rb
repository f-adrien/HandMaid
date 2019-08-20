class RemoveQuantityColumnInBookingServing < ActiveRecord::Migration[5.2]
  def change
        remove_column :booking_services, :quantity
  end
end
