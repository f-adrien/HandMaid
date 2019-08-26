class ClientsController < ApplicationController
  before_action :find_client, only: %i[edit update]

  def edit
  end

  def update
    @client.update(client_params)
    redirect_to bookings_path
  end

  private

  def find_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :address, :phone_number)
  end
end
