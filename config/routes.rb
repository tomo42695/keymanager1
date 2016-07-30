Rails.application.routes.draw do
  devise_for :users
  root 'rentals#index'
  # resources :rentals
  resources :rentals, except: [:show]
  get 'rentals/:id/returning' => 'rentals#returning'
end
