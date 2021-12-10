Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'articles#index'
  resources :articles
  resources :users, only: [:show]
end
