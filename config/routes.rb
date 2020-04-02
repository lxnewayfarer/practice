Rails.application.routes.draw do
  resources :groups
  resources :countries
  resources :genres
  resources :feeds
  resources :peoples, only: :show
  devise_for :users, controllers: { 
    registrations: 'users/registrations' 
  }
  root "home#index"
  
end
