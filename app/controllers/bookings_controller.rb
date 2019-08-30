class BookingsController < ApplicationController

  before_action :find_booking, only: [:show, :payment]

  def index
    @bookings_confirmed = current_user.bookings.where(status: "confirmed").order(:date).reverse
    @bookings_pending = current_user.bookings.where(status: "pending").order(:date).reverse
  end

  def show
  end

  def new
    @services = Service.all
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_params_booking)
    @booking.date = DateTime.parse(params[:booking][:date])
    @booking.price_cents = params[:booking][:total_duration].to_i * 10 * 100
    @booking.client_id = current_user.id
    if @booking.save
      params[:booking][:services].each do |service_id|
        BookingService.create(service_id: service_id, booking_id: @booking.id)
      end
      redirect_to booking_payment_path(@booking)
    else
      redirect_to new_booking_path
      # redirect_to booking_payment_path(@booking)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  def payment
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def strong_params_booking
    params.require(:booking).permit(:total_duration, :address)
  end
end
