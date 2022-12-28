Rails.application.routes.draw do
  root to: 'top_page#top'
  resource :users, only: [:new ,:create ,:destroy ]
end
