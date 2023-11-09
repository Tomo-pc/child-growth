Rails.application.routes.draw do
  devise_for :users
  root to: 'milks#index'
  resources :milks
end
