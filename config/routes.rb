require 'sidekiq/web'

Rails.application.routes.draw do
  resources :coupons
  resources :homes
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :wallet_details
  resources :wallets
  resources :customer_informations
  resources :order_details
  resources :orders
  resources :items
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'homes#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
