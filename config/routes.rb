Rails.application.routes.draw do
  resources :carts
  resources :orders
  resources :menu_items
  resources :reviews
  resources :restaurants
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
