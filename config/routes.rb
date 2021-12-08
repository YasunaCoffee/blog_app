Rails.application.routes.draw do
  root 'article#index'
  resources :articles
end
