Rails.application.routes.draw do

  resources :users
  resources :tasks
  resources :categories

  post "/sessions" => "sessions#create"

end
