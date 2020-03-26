Rails.application.routes.draw do
  resources :genres
  devise_for :users, controllers: { 
    registrations: 'users/registrations' 
  }
  root "home#index"
  resources :users, only: :index
end
