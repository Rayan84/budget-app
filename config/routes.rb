Rails.application.routes.draw do
  resources :categories
  get 'home/index'
  devise_for :users
  resources :users

  root 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
