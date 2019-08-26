Rails.application.routes.draw do

  devise_for :registrations, controllers:  {
    registrations: "registrations"
  }

  root to: 'pages#home'

  resources :bookings, except: [:edit, :update]

  namespace :cleaners do
    resources :bookings, only: [:index, :show]
  end

  resources :services, except: [:show]
  resources :cleaners, only: [:edit, :update]
  resources :clients, only: [:edit, :update]
  # resources :requests, only: [:show, :edit, :update]

  get 'bookings/:id/payment', to: 'bookings#payment', as: :booking_payment
  get 'request', to: 'requests#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
