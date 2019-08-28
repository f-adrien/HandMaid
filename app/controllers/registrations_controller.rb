class RegistrationsController < Devise::RegistrationsController

  def create
    super
    if params[:user_type] == "Client"
      user = Client.create
    elsif params[:user_type] == "Cleaner"
      user = Cleaner.create
    end
    @registration.user = user
    @registration.save
  end
end
