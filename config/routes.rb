# frozen_string_literal: true

Rails.application.routes.draw do
  root 'events#index'
  get '/newevent', to: 'events#new'
  post '/newevent', to: 'events#create'
  get 'sessions/new'
  get 'users', to: 'users#index'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :events, only: %i[new show index create]
  resources :users, only: %i[show new create]
end
