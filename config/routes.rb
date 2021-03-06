Rails.application.routes.draw do

  devise_for :registrations, controllers:  {
    registrations: "registrations"
  }

  root to: 'pages#home'

  resources :bookings, except: [:edit, :update]

  namespace :cleaners do
    resources :bookings, only: [:index, :show]
  end

  # resources :bookings, only: [] do
  #   resources :booking_rejections, only: [:create]
  # end

  resources :services, except: [:show]
  resources :cleaners, only: [:edit, :update]
  resources :clients, only: [:edit, :update]

  # resources :requests, only: [:show, :edit, :update]

  get 'bookings/:id/payment', to: 'bookings#payment', as: :booking_payment
  get 'request', to: 'requests#show'
  patch 'cleaner/bookings/:id/confirmed', to: 'cleaners/bookings#booking_confirm', as: :confirm_booking
  post 'cleaner/bookings/:id/rejected', to: 'cleaners/bookings#booking_reject', as: :reject_booking
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
