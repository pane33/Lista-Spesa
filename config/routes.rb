Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # user_path
  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  # home_path
  root to: "home#index"
  get "about", to: "about#index"
  get "show", to: "todos#show"
  # todos_path
  resources :todos

end
