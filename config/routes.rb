Rails.application.routes.draw do
  devise_for :users
  root to: "selling_prices#index"
  resources :selling_prices, only: [:index, :new, :create]
end
