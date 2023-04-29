Rails.application.routes.draw do

  
  get "/signup" => "users#new"	
  post "/users" => "users#create"
  get "/users" => "users#index"


  resources :tasks
  resources :categories
  resources :users#, only: [:index, :show]


  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
  

end
