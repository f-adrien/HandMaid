class BookingRejection < ApplicationRecord
  belongs_to :booking
  belongs_to :cleaner
  validates :booking_id, uniqueness: { scope: :cleaner_id }
end
