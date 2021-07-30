# frozen_string_literal: true

Rails.application.routes.draw do
  get 'channels/show'
  namespace :admin do
      resources :posts
      resources :authors
      resources :channels

      root to: "posts#index"
    end

  resources :posts, only: [:index]
  resources :channels, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "posts#index"
end
