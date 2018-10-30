Rails.application.routes.draw do
  get '/', to: 'users#new'
  get '/users', to: 'users#new'
  post '/', to: 'users#create'
  post '/users', to: 'users#create'
  get '/users/new', to: 'users#new'
  post '/users/new', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
