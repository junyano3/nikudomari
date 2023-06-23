Rails.application.routes.draw do
  root to: "selling_prices#index"
  resources :selling_prices, only: [:index, :new, :create]
end
