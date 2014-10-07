HappyClients::Application.routes.draw do
  root "stories#index"
  resources :stories
  get "random" => "stories#random"
  get "archive" => "stories#archive"
  get "test" => "stories#test"
end
