Rails.application.routes.draw do
  root "tasks#index"

  resources :tasks
  resources :categories

  # users
  get "/signup" => "users#new"
  post "/users" => "users#create"

  # sessions
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"


end
