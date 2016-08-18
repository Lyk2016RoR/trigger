Rails.application.routes.draw do
  root "books#index"
  
  resources :categories, only: [:show, :index]
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books
  resources :authors
  resources :comments
  end
