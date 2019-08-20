Rails.application.routes.draw do
  devise_for :registrations, controllers:  {
    registrations: "registrations"
  }

  root to: 'pages#home'

  resources :bookings, except: :destroy
  resources :services, except: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
