Rails.application.routes.draw do
  
  
  root 'root#index'
  get 'mypage', :to => "mypage#index"
  
  post 'stories/preview', :to => "stories#preview"
  
  resources :pennames
  resources :stories, only: [:index, :show, :new, :create ] do
    get 'next/new', :to => "stories#next_new", on: :member
    post 'next/preview', :to => "stories#next_preview", on: :member
    post 'next/craete', :to => "stories#next_create", on: :member
  end
  resources :novels, only: [:index, :show, :new]

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }
  
  get "users/:id", :to => "mypage#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
