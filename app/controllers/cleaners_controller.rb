class CleanersController < ApplicationController
  def edit
    @cleaner = Cleaner.find(params[:id])
  end

  def update
    @cleaner = Cleaner.find(params[:id])
    @cleaner.update(cleaner_params)
    redirect_to bookings_path
  end

  private

  def cleaner_params
    params.require(:cleaner).permit(:first_name, :last_name, :address, :radius, :phone_number)
 end
end

