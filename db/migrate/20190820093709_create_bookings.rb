class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :date
      t.integer :total_duration
      t.integer :total_price
      t.boolean :status
      t.string :address
      t.integer :additional_minutes
      t.references :client, foreign_key: true
      t.references :cleaner, foreign_key: true

      t.timestamps
    end
  end
end
