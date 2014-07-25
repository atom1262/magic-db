MagicDb::Application.routes.draw do

  root 'homes#show'

  resources :tricks, only: [:new, :create, :show]

end
