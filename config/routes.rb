Rails.application.routes.draw do
  namespace :api  do
    namespace :v1  do
      resources :users, only: [:create]
      resources :authenticate, only: [:create]
      resources :quotes, only: [:index]

      post 'auth/create', to: 'users#create'
      post 'auth/authenticate', to: 'authenticate#create'
    end
  end
end
