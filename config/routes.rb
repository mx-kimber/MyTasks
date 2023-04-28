Rails.application.routes.draw do

  
  get "/signup" => "users#new"	
  post "/users" => "users#create"
  get "/users" => "users#index"


  resources :tasks
  resources :categories

  
end
