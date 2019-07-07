Rails.application.routes.draw do

  get '/login' , to: "sessions#new"
  post '/login' , to: "sessions#create"
  post '/delete' , to: "sessions#destroy"


  get '/show' , to: "sessions#show"
  post '/secrets/show' , to: "secrets#show"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
