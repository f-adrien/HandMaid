class Cleaner < ApplicationRecord
  has_many :bookings
  has_many :clients, through: :bookings
  has_one :registration, as: :user
  validates :first_name, :last_name, :phone_number, :address, :radius, presence: true, on: :update
end
