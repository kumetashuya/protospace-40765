Rails.application.routes.draw do
  devise_for :users
  resources :prototypes
  resources :comments, only: [:create, :destroy]
  resources :prototypes do
    resources :comments, only: [:create]
  end
  root "prototypes#index"
  resources :users, only: [:show]
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy]


end
