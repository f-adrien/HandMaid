class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def new
    @services = Service.all
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_params_booking)
    if @booking.save
      redirect_to bookings_path
    else
      # render FORMCLEANER
      redirect_to bookings_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def strong_params_booking
    params.require(:booking).require(:date, :total_duration, :total_price, :status, :address)
  end
end
