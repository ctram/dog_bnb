PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  resources :users
  resources :posts
  resources :categories


end
