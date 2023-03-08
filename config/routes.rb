# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'top_page#top'
  resource :users, only: %i[new show create destroy edit update]

  get 'login', to: 'user_sessions#new', as: 'login'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy', as: 'logout'

  get 'rice_map', to: 'rices#rice_map'
  get 'rice_map/searches', to: 'rices#rice_map_serch', defaults: { format: :json }
  resources :rices, only: %i[show] do
    resource :favorites, only: %i[create destroy]
    collection do
      get 'search'
    end
  end

  get 'rice_ranking', to: 'user_rankings#index', as: 'rice_ranking'
  get 'user_ranking/destroy', to: 'user_rankings#destroy'

  namespace :admin do
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    root 'dashboards#index'
    resources :rices, only: %i[index edit update show destroy]
    resources :rice_status, only: %i[ update destroy]
  end
end
