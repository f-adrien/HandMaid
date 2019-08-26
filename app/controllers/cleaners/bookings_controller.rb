class Cleaners::BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @bookings_near = Booking.near(current_user.address, current_user.radius)
  end
end
