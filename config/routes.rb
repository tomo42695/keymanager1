Rails.application.routes.draw do
  devise_for :users
  root 'rentals#index'
  # resources :rentals
  resources :rentals, only: [:index, :new, :create, :destroy]
end
