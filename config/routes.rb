Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do

      # resources :accounts

      resources :accounts, only: %i[create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'accounts#profile'

      resources :accounts do
        resources :posts
      end
      #
      resources :accounts do
        resources :comments
      end

      resources :posts do
        resources :accounts
      end
      #
      resources :posts do
        resources :comments
      end


      resources :comments do
        resources :accounts
      end
      #
      resources :comments do
        resources :posts
      end

    end
  end
end
