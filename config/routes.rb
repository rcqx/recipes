Rails.application.routes.draw do
  devise_for :users

  resources :inventories, only: [:index, :show, :new, :create, :destroy]
  resources :recipes, only: [:new, :create, :destroy, :index, :show]
  resources :users, only: [:new, :create, :destroy, :index, :show]
end
