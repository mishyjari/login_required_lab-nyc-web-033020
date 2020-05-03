Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#login'
  get '/secrets/show', to: 'secrets#show'
  resources :sessions, only: [:create]
  delete '/sessions/destroy', to: 'sessions#destroy'
  get '/sessions/new', to: 'sessions#new'
end
