Rails.application.routes.draw do
  devise_for :registrations, controllers:  {
    registrations: "registrations"
  }

  root to: 'pages#home'

  resources :bookings, except: [:edit, :update]
  resources :services, except: [:show]
  resources :cleaners, only: [:edit, :update]
  resources :clients, only: [:edit, :update]
  resources :requests, only: [:show, :edit, :update]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
