Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/clients" => "clients#index"
  get "/visits" => "visits#index"
  get "/notes" => "notes#index"
  post "/notes" => "notes#create"
  post "/clients" => "clients#create"
  get "/clients/:id" => "clients#show"
  get "/notes/:id" => "notes#show"
  patch "/clients/:id" => "clients#update"
  patch "/notes/:id" => "notes#update"
  delete "/clients/:id" => "clients#destroy"
  delete "/notes/:id" => "notes#destroy"
end
