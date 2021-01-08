Rails.application.routes.draw do
  
  # devise_for :users
  root "users#index"
    
  get 'users/index'
  get 'users/new'
  get 'users/user'
  get 'users/create'
  
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/show'
  get 'posts/edit'
  get 'posts/destroy'

  get 'sessions/new'
  
  resources :users do
    resources :posts, only: [:new,:create]
  end
  
  resources :sessions, only: [:new,:create,:destroy]

end
