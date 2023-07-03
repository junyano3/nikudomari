Rails.application.routes.draw do
  get 'meats/new'
  devise_for :users
  root to: "selling_prices#index"
  resources :selling_prices, only: [:index, :new, :create]
  resources :users, only: [:edit, :update, :destroy]
  resources :cuts,only: [:new, :create]
  resources :meats
end
