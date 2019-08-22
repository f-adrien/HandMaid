class ClientsController < ApplicationController
  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    @client.update(client_params)
    redirect_to bookings_path
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :address, :phone_number)
  end
end
