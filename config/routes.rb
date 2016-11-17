Rails.application.routes.draw do
  resources :stocks
  devise_for :users
  root to: 'stocks#index'
  get 'analytics', to: 'pages#analytics'
end
