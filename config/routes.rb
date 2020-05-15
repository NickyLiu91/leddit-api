Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do

      # resources :accounts

      resources :accounts do
        resources :posts
      end
      #
      resources :accounts do
        resources :comments
      end

      resources :accounts do
        resources :replies
      end

      resources :posts do
        resources :accounts
      end
      #
      resources :posts do
        resources :comments
      end

      resources :posts do
        resources :replies
      end

      resources :comments do
        resources :accounts
      end
      #
      resources :comments do
        resources :posts
      end

      resources :comments do
        resources :replies
      end

      resources :replies do
        resources :accounts
      end
      #
      resources :replies do
        resources :posts
      end

      resources :replies do
        resources :comments
      end

    end
  end
end
