Rails.application.routes.draw do
  get '/newevent', to: 'events#new'
  post '/newevent', to: 'events#create'
  get 'sessions/new'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :events, only: [:new, :show, :index, :create]
  resources :users, only: [:show,:new,:create]
end
