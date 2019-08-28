class Booking < ApplicationRecord
  belongs_to :client
  belongs_to :cleaner, optional: true
  has_many :booking_services
  has_many :services, through: :booking_services
  has_many :booking_rejections
  monetize :price_cents
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
