Rails.application.routes.draw do
  root "tasks#index"

  resources :tasks
  resources :categories do
    resources :category_tasks
  end

  resources :category_tasks, only: [:create]

  # users
  get "/signup" => "users#new"
  post "/users" => "users#create"

  # sessions
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end


