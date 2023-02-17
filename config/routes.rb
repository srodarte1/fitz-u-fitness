Rails.application.routes.draw do
  
  
  resources :routines
  resources :exercises
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  delete "/logout", to: "sessions#logout"
  post "/login", to: "sessions#login"
  get "/authorized_user", to: "users#show"

  # Defines the root path route ("/")
  # root "articles#index"
end
