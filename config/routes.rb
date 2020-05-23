Rails.application.routes.draw do
  get 'mypage/top'
  devise_for :users
  resources :contributors
  resources :stories
  resources :novels
  resources :profiles
  get 'root/index'

  root to: 'root#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
