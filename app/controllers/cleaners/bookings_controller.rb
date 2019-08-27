class Cleaners::BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    bookings_near = Booking.near(current_user.address, current_user.radius).where(status: "pending")
    #@bookings_display = bookings_near.joins("FULL OUTER JOIN booking_rejections ON booking_rejections.booking_id = bookings.id
                        #AND booking_rejections.cleaner_id = #{current_user.id}")
    @rejected_bookings = current_user.booking_rejections.map{ |book| book = book.booking }
    @bookings_display = bookings_near - @rejected_bookings
    BookingRejection.new
  end

  def booking_confirm
    @booking = Booking.find(params[:id])
    @booking.status = "confirmed"
    @booking.cleaner_id = current_user.id
    @booking.save
  end

  def reject_booking
    @booking = Booking.find(params[:id])
  end
end
