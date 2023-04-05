require 'sidekiq/web'

Rails.application.routes.draw do
  resources :wallet_details
  resources :wallets
  resources :customer_informations
  resources :ticket_details
  resources :tickets
  resources :order_details
  resources :orders
  resources :items
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
