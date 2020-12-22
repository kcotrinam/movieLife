Rails.application.routes.draw do
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  get 'sign_out', to: 'sessions#destroy'
  get 'sign_up', to: 'users#new'

  resources :users, only: [:new, :destroy, :create]
  resources :articles
  resources :categories do
    resources :votes, only: [:create, :destroy]
  end

  root 'categories#index'
end
