Rails.application.routes.draw do
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
