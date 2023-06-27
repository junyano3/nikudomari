Rails.application.routes.draw do
  devise_for :users
  root to: "selling_prices#index"
  resources :selling_prices, only: [:index, :new, :create]
  resources :users, only: [:edit, :update, :destroy]
  resources :cuts,only: [:new, :create]
end
