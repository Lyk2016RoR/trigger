Rails.application.routes.draw do
  devise_for :users
  root "books#index"
  
  resources :categories, only: [:show, :index]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :books do
    resources :comments, only: [:create, :destroy]
    resources :votes, only: [:create, :destroy]
    resources :authors
  end

  resources :categories, only: [:show, :index]
  end
