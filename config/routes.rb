Rails.application.routes.draw do
  devise_for :users

  root "users#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :foods, only: [:index, :show, :new, :create, :destroy, :update]
  resources :inventories, only: [:index, :show, :new, :create, :destroy]
  resources :recipes, only: [:new, :create, :destroy, :index, :show, :update] do
    resources :recipe_food, only: [:new, :create, :destroy, :index, :show]
  end
  resources :users, only: [:new, :create, :destroy, :index, :show]

end
