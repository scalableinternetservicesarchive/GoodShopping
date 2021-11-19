Rails.application.routes.draw do
  root "landing_page#index"
  resources :products
  resources :manufacturers, only: %w[create new show]
  resources :shoppers, only: %w[create new show index edit update]
  resources :carts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
