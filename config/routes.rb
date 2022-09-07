Rails.application.routes.draw do
  get 'home/index'
  get 'home/read'
  get 'home/shoppin_list'
  get 'test/index'
  get 'test/read'
  get 'test/shoppingList'
  get 'home/new'
  get 'home/create'
  get 'home/destroy'
  get 'home/index'
  get 'home/show'
  get 'test/new'
  get 'test/create'
  get 'test/destroy'
  get 'test/index'
  get 'test/show'
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  resources :inventories, only: [:index, :show, :new, :create, :destroy]
  resources :recipes, only: [:new, :create, :destroy, :index, :show]
  resources :users, only: [:new, :create, :destroy, :index, :show]
end
