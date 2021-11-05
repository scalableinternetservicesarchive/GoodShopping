Rails.application.routes.draw do
  root "products#index" #TODO:: Add a home page, not products
  resources :products
  resources :manufacturers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
