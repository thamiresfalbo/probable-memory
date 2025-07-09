# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get 'dashboard', to: 'dashboard#show', as: :dashboard

  resource :session, only: %i[new create destroy]
  get 'login', to: 'sessions#new', as: :login
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy', as: :logout

  resources :passwords, only: %i[new create edit update], param: :token

  resources :users, except: %i[destroy]
  get 'register', to: 'users#new', as: :register
  post 'register', to: 'users#create'
  get 'profile/edit', to: 'users#edit'

  resources :works
  resources :chapters
  resources :tags, only: %i[index show]
end
