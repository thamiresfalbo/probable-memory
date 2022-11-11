Rails.application.routes.draw do
  # root to: 'users#index'
  resources :users

  root 'home#index'

  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => 'user_sessions#create'
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
