Rails.application.routes.draw do

  
  get "/signup" => "users#new"	
  post "/users" => "users#create"
  get "/users" => "users#index"


  resources :tasks
  resources :categories


  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
  

end
