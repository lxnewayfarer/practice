Rails.application.routes.draw do
  resources :issues
  resources :socials
  resources :goods
  resources :places
  resources :cities
  resources :events
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :songs
  resources :albums
  resources :groups
  resources :countries
  resources :genres
  resources :feeds
  resources :peoples, only: [:show, :index]
  devise_for :users, controllers: { 
    registrations: 'users/registrations' 
  }
  root "home#index"
  
end
