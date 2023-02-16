Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :payments
  resources :groups
  resources :users
  resources :home
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
