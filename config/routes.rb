Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard"
  resources :planets do
    resources :bookings, only: [:new, :create]
  end
  # resources :bookings, only
  resources :bookings do
    resources :reviews, only: [:create, :destroy]
    member do
      patch :accept
      patch :decline
    end

  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
