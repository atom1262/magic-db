MagicDb::Application.routes.draw do

  root 'homes#show'

  resources :users, only: [:show]
  resources :tricks, only: [:index, :new, :create, :show] do
    resources :tags, only: [:new, :create]
  end

  resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resource  :search, only: [:show]


end
