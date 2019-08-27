class Cleaner < ApplicationRecord
  has_many :bookings
  has_many :clients, through: :bookings
  has_many :booking_rejections
  has_one :registration, as: :user
  validates :first_name, :last_name, :phone_number, :address, :radius, presence: true, on: :update
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
