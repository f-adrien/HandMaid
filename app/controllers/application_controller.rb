class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_registration!

  helper_method :user_signed_in?, :current_user

  def user_signed_in?
    registration_signed_in?
  end

  def current_user
    @user ||= current_registration.user
  end
end
