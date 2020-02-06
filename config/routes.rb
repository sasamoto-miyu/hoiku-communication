Rails.application.routes.draw do
  root to: "tweets#index"
  resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update]
  post  '/tweets/new' => 'tweets#create'
  resources :posts, only: [:new, :create]
   
end
