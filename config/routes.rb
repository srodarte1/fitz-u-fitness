Rails.application.routes.draw do
  
  
  resources :routines
  resources :exercises
  resources :users, except: [:create, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  delete "/logout", to: "sessions#logout"
  post "/login", to: "sessions#login"
  post "/signup", to: "users#create"
  get "/authorized_user", to: "users#show"

  # Defines the root path route ("/")
  # root "articles#index"
end
