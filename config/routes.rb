Rails.application.routes.draw do
  root 'rentals#index'
  resources :rentals, only: [:index, :new]
end
