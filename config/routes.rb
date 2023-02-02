# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'top_page#top'
  resource :users, only: %i[new create destroy]

  get 'login', to: 'user_sessions#new', as: 'login'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy', as: 'logout'

  get 'rice_map', to: 'rices#rice_map'
  resources :rices, only: %i[show]
end
