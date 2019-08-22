class RemoveTotalPriceColumnFromBookingsAndAddPrice < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :total_price
    add_monetize :bookings, :price, currency: { present: false }
  end
end
