Rails.application.routes.draw do

  root to: 'home#public_recipes'
  get 'public_recipes', to: 'home#public_recipes'

  devise_for :users

  resources :foods, only: [:index, :show, :new, :create, :destroy]
  resources :inventories, only: [:index, :show, :destroy] do
    resources :inventory_foods, only: [:new, :create, :destroy]
  end
  resources :recipes, only: [:new, :create, :destroy, :index, :show, :update] do
    resources :recipe_food, only: [:new, :create, :destroy, :index, :show, :update]
    resources :shopping_lists, only: [:index, :new, :create]
  end
  resources :users, only: [:new, :create, :destroy, :index, :show]
  

end
