Rails.application.routes.draw do
  resources :reviews
  resources :listing_categories
  resources :categories
  resources :reservations
  resources :listings
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
