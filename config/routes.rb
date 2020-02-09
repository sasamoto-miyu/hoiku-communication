Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"

  resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update]
  post  '/tweets/new' => 'tweets#create'
  resources :posts, only: [:new, :create]

  resources :recipes, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :medicals, only: [:index, :new, :create, :destroy, :edit, :update]
   
end
