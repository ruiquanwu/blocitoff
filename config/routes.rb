Rails.application.routes.draw do
  get 'items/create'

  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  
  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end
end
