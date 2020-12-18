Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/new'
  get 'articles/edit'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  get 'sign_out', to: 'sessions#destroy'
  get 'sign_up', to: 'users#new'
  resources :users, only: [:new, :destroy, :create]
end
