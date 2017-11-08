Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "restaurants#index"

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :new, :create]
  end


  # # VIEW
  # get "restaurants", to: "restaurants#index"

  # # CREATE
  # get "restaurants/new", to: "restaurants#new", as: "new_restaurant"
  # post "restaurants", to: "restaurants#create"

  # # SHOW
  # get "restaurants/:id", to: "restaurants#show", as: "restaurant"

  # # CREATE REVIEW
  # get "restaurants/:id/reviews/new"
  # post "restaurants/:id/reviews"

  # # # DESTROY
  # # delete "restaurants/:id", to: "restaurants#destroy"
end
