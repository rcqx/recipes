Rails.application.routes.draw do
  resources :inventories, only: [:index, :show, :new, :create, :destroy]
end
