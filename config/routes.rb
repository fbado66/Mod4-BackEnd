Rails.application.routes.draw do
  resources :reviews
  resources :listing_categories
  resources :categories
  resources :reservations
  resources :listings
  resources :users

  post '/users/login', to: "users#login"
  post "/users", to: "users#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
