Rails.application.routes.draw do
  resources :categories do
    resources :tansactions
  end
  get 'home/index'
  devise_for :users
  resources :users

  root 'categories#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
