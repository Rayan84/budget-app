Rails.application.routes.draw do

  get 'home/index'
  devise_for :users
  resources :users

  root 'categories#index'
  resources :categories do
    resources :transactions
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
