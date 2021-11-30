Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :clowns do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[update destroy]

end
