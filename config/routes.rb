Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :castles do
    resources :bookings, only: [:new, :create]
  end
  get 'bookings', to: 'bookings#index'
  get 'booking/:id', to: 'bookings#show', as: 'booking'
end
