Rails.application.routes.draw do
  get 'root/index'

  root to: 'root#index'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
