class Client < ApplicationRecord
  has_many :bookings
  has_many :cleaners, through: :bookings
  has_one :registration, as: :user
end
