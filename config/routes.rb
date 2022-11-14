Rails.application.routes.draw do
  root to: 'users#index'
  resources :users

  # root 'home#index'

  get 'login', to: 'user_sessions#new', as: :login
  post 'login', to: 'user_sessions#create'
  post 'logout', to: 'user_sessions#destroy', as: :logout

end
