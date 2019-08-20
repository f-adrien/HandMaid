class CreateBookingServices < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_services do |t|
      t.integer :quantity
      t.references :service, foreign_key: true
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
