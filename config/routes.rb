Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers, only: [:index, :show, :create, :new] do
    resources :bookings, only: [:create, :update]
  end
  resources :bookings, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
