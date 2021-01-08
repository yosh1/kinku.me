Rails.application.routes.draw do
  # devise_for :users
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/show'
  get 'posts/edit'
  get 'posts/destroy'
  get 'sessions/new'
  get 'users/index'
  get 'users/new'
  get 'users/user'
  get 'users/create'
  resources :users do
    resources :posts, only: [:new,:create]
  end
  get "posts/index"
  root "users#index"
  resources :sessions, only: [:new,:create,:destroy]
end
