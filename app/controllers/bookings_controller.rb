class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @services = Service.all
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_params_booking)
    @booking.date = DateTime.parse(params[:booking][:date])
    @booking.total_price = params[:booking][:total_duration] * 10
    @booking.client_id = 1
    if @booking.save
      params[:booking][:services].each do |service_id|
        BookingService.create(service_id: service_id, booking_id: @booking.id)
      end
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
    params.require(:booking).permit(:total_duration, :address)
  end
end
