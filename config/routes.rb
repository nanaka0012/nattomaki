Rails.application.routes.draw do

  root 'root#index'
  get 'mypage', :to => "mypage#index"
  resources :pennames
  resources :stories, only: [:index, :show, :new]
  resources :novels

  get "users/:id", :to => "mypage#index"

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
