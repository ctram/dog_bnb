PostitTemplate::Application.routes.draw do
  root to: 'users#index'

  resources :users
  resources :posts
  resources :categories


end
