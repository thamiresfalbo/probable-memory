Rails.application.routes.draw do
  resources :users
  resources :user_sessions, only: %i[new create destroy]
  root 'home#index'
  
  get 'login', to: 'user_sessions#new', as: :login
  post 'login', to: 'user_sessions#create'
  post 'logout', to: 'user_sessions#destroy', as: :logout
end
