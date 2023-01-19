Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  root to: "home#index"

  get "about", to: "about#index"

  resources :todos
  # Defines the root path route ("/")
  # root "articles#index"
end
