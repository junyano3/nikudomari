Rails.application.routes.draw do
  root to: "selling_prices#index"
  resources :selling_price, only: :index
end
