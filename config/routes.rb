Rails.application.routes.draw do

resources :posts

#config/routes.rb
resources :posts do
  resources :main #-> domain.com/songs/:song_id/samples/new
end

  get "main", to: "main#show"

  get "main", to: "main#new"
  

  get "posts", to: "posts#index"
  get "posts", to: "posts#show"
  
  get "about", to: "about#index"

  get "sign_up", to: "registerations#new"
  post 'sign_up', to: "registerations#create"

  get "sign_in", to: "sessions#new"
  post 'sign_in', to: "sessions#create"

  post 'sign_in', to: "sessions#update"

  delete 'logout', to: "sessions#destroy"

  root to: "main#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
