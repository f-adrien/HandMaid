class ClientsController < ApplicationController
  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client.update(client_params)
    redirect_to edit_client_path(@client)
  end

  private

  def client_params
    params.require(:cleaner).permit(:first_name, :last_name, :address, :phone_number)
  end
end

