Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  root to: "home#index"

  get "about", to: "about#index"
  get "login", to: "login#index"

  post "login", to:"login#create"

  resources :todos
  # Defines the root path route ("/")
  # root "articles#index"
end
