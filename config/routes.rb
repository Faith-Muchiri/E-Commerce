Rails.application.routes.draw do
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
end
