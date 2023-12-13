Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "cases#new"

  resources :cases, only: [:new, :create, :show, :destroy]
  resources :unbolts, only: :show
end
