Rails.application.routes.draw do
  root 'home#index'

  resources :users
  get 'register', to: 'users#new', as: :register
  post 'register', to: 'users#create'
  get 'profile/edit', to: 'users#edit'

  resources :user_sessions, only: %i[new create destroy]
  get 'login', to: 'user_sessions#new', as: :login
  post 'login', to: 'user_sessions#create'
  post 'logout', to: 'user_sessions#destroy', as: :logout

  resources :works
  resources :chapters
  resources :tags, only: %i[index show]

  get 'dashboard', to: 'dashboard#show', as: :dashboard
end
