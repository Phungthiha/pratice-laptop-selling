Rails.application.routes.draw do
  root "static_pages#index"

  get "sessions/new"
  get "/index", to: "static_pages#index"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
end
