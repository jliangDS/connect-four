Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/users/new', to: 'user#new'

  get '/users', to: 'user#index'

  post '/users', to: 'user#create'

  get '/homepage', to: 'user#homepage'

  post '/game', to: 'user#game'

  patch '/game', to: 'user#update'

  get '/game', to: 'user#game'
end
