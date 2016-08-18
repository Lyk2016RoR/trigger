Rails.application.routes.draw do
  resources :categories, only: [:show, :index]

	root "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books
  resources :authors
 resources :comments
end
