Rails.application.routes.draw do
  
  
  root 'application#hello', as: :splash

  get 'secrets/new' => 'secrets#new', as: :secret

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  post '/logout' => 'sessions#destroy'


end
