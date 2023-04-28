Rails.application.routes.draw do

  resources :users
  resources :tasks
  resources :categories

  # get "/categories" => "categories#index"
  # get "/categories" => "categories#show"
  
end
