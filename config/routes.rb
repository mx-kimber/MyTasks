Rails.application.routes.draw do

  
  get "/signup" => "users#new"	
  post "/users" => "users#create"


  resources :tasks
  resources :categories

  
end
