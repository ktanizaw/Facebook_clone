Rails.application.routes.draw do
  root to: "feeds#index"
    resources :feeds do
    resources :comments
    collection do
    post :confirm
  end
end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
