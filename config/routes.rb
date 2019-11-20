Rails.application.routes.draw do
  root to: "feeds#index"
  resources :feeds
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
