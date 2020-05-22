Rails.application.routes.draw do
  resources :contributors
  resources :stories
  resources :novels
  resources :users
  resources :profiles
  get 'root/index'

  root to: 'root#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
