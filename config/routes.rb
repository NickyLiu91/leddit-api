Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do

      resources :accounts
      resources :posts
      resources :comments
      resources :replies

      # resources :players do
      #   resources :cards
      # end
      #
      # resources :players do
      #   resources :decks
      # end
      #
      # resources :cards
      #
      # resources :decks do
      #   resources :cards
      # end
      #
      #
      # resources :deckcards
      #
      # resources :allcards
    end
  end
end
