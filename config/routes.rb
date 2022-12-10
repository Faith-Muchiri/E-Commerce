Rails.application.routes.draw do
  get 'render/index'
  resources :reviews
  resources :cartitems
  resources :carts
  resources :users
  resources :products
  resources :categories


  resources :products do
    resources :reviews 
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/me', to: 'users#show'
  post '/signup', to: 'users#create'

  Rails.application.routes.draw do
    get 'render/index'
   
    # For more details on this file's DSL, see https://guides.rubyonrails.org/routing.html
    root 'render#index'end
end
