Rails.application.routes.draw do
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  get 'sign_out', to: 'sessions#destroy'
  get 'sign_up', to: 'users#new'

  resources :users, only: [:new, :destroy, :create]
  resources :articles do
    resources :votes, only: [:new, :create, :destroy]
  end
  resources :categories, only: [:index, :new, :new, :create, :update, :show]

  root 'categories#index'
end
