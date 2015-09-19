Rails.application.routes.draw do

  get '/creatures', to: "creatures#index" # same as 'get "/creatures" => "creatures#index"'

  get '/creatures/new', to: "creatures#new"

  post '/creatures', to: "creatures#create"

  get '/creatures/:id', to: "creatures#show"

end