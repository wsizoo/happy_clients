HappyClients::Application.routes.draw do
  root "stories#index"
  resources :stories
  get "random" => "stories#random"
  get "archive" => "stories#archive"
end
