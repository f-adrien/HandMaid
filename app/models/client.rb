class Client < ApplicationRecord
  has_many :bookings
  has_many :cleaners, through: :bookings
  has_one :registration, as: :user
  validates :first_name, :last_name, :phone_number, :address, presence: true, on: :update
end
