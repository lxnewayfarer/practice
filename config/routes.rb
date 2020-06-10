Rails.application.routes.draw do
  resources :orders
  resources :tickets
  resources :issues
  resources :socials
  resources :goods
  resources :places
  resources :cities
  resources :events
  devise_for :users, controllers: { 
    registrations: 'users/registrations' 
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :songs
  resources :albums
  resources :groups
  resources :countries
  resources :genres
  resources :feeds
  resources :peoples, only: [:show, :index]
  
  root "home#index"
  
end
