Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  root to: "feeds#index"
    resources :feeds do
    resources :comments
    collection do
    post :confirm
  end
end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :relationships, only: [:create, :destroy]
end
