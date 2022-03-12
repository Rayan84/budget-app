Rails.application.routes.draw do

  get 'home/index'
  devise_for :users
  resources :users

  #root 'categories#index'
  resources :categories do
    resources :transactions
  end

  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end

  unauthenticated :user do
    root to: 'home#index'
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
