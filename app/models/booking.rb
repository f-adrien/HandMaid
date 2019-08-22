class Booking < ApplicationRecord
  belongs_to :client
  # belongs_to :cleaner
  has_many :booking_services
  has_many :services, through: :booking_services
end
