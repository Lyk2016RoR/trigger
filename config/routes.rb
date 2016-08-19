Rails.application.routes.draw do
  root "books#index"
  devise_for :user, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
}

  devise_for :admin, controllers: {
      sessions: 'admins/sessions',
      registrations: 'admins/registrations'
    }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books do
    resources :votes, only: [:create, :update ]
  end
  resources :authors
  resources :categories, only: [:show, :index]
  resources :comments, only: [:create, :destroy]

end