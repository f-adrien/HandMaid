class RegistrationsController < Devise::RegistrationsController

  def create
    super
    if params[:user_type] == "client"
      user = Client.create
    elsif params[:user_type] == "cleaner"
      user = Cleaner.create
    end
    @registration.user = user
    @registration.save
  end
end
