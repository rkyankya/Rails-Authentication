# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts, only: %i[index create new]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
