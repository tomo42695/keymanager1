Rails.application.routes.draw do
  devise_for :users
  root 'rentals#index'
  resources :rentals, only: [:index, :new, :create]
end
