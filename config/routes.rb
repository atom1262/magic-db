MagicDb::Application.routes.draw do

  root 'homes#show'

  resources :users, only: [:show]
  resources :tricks, only: [:new, :create, :show]
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy]


end
