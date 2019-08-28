class BookingRejectionsController < ApplicationController

  def create
    @rejected_booking = BookingRejection.new
    @rejected_booking.booking_id = params[:booking_id]
    @rejected_booking.cleaner_id = current_user.id
    @rejected_booking.save
    redirect_to root_path
  end

end
