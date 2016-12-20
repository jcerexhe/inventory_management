Rails.application.routes.draw do
  resources :stocks do
    collection { post :import }
  end
  devise_for :users
  root to: 'stocks#index'
  get 'analytics', to: 'pages#analytics'
  get 'settings', to: 'pages#settings'
end
