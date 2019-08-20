class Cleaner < ApplicationRecord
  has_many :bookings
  has_many :clients, through: :bookings
  has_one :registration, as: :user
end
