class PagesController < ApplicationController
  skip_before_action :authenticate_registration!, only: [:home]

  def home
    if user_signed_in? && request.referer
      if URI(request.referer).path == '/registrations/sign_up'
        if (current_registration.user_type == "Client" )
          redirect_to edit_client_path(current_user.id)
        else
          redirect_to edit_cleaner_path(current_user.id)
        end
      end
    end
  end
end
