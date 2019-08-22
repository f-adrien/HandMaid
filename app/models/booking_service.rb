class BookingService < ApplicationRecord
  belongs_to :service
  belongs_to :booking
  validates :address, prensence: true
end
