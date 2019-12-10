Rails.application.routes.draw do 
  devise_for :users
  root to: "posts#index"
  resources :users, only: [:edit, :update,:show]
  resources :posts do 
    resources :comments, only: :create
  end
end
