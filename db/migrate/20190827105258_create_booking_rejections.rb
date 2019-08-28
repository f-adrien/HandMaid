class CreateBookingRejections < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_rejections do |t|
      t.references :booking, foreign_key: true
      t.references :cleaner, foreign_key: true

      t.timestamps
    end
  end
end
