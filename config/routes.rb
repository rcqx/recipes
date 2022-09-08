Rails.application.routes.draw do
  # Defines the root path route ("/")
  root to: 'home#public_recipes'
  get 'public_recipes', to: 'home#public_recipes'

  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  resources :inventories, only: [:index, :show, :destroy] do
    resources :inventory_foods, only: [:new, :create, :destroy]
  end
  resources :recipes, only: [:new, :create, :destroy, :index, :show]
  resources :users, only: [:new, :create, :destroy, :index, :show]
end
