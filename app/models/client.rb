class Client < ApplicationRecord
  has_many :bookings
  has_many :cleaners, through: :bookings
end
