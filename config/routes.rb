Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root to: "home#index"

  get "about", to: "about#index"
  get "login", to: "login#index"

  post "login", to:"login#create"

  resources :todos
  # Defines the root path route ("/")
  # root "articles#index"
end
