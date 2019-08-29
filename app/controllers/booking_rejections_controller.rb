class BookingRejectionsController < ApplicationController

  def create
    @booking = Booking.find(params[:booking_id])
    @rejected_booking = BookingRejection.new
    @rejected_booking.booking_id = params[:booking_id]
    @rejected_booking.cleaner_id = current_user.id
    @rejected_booking.save
    respond_to do |format|
      format.html { redirect_to cleaners_bookings_path(current_user) }
      format.js
    end
  end

end
