Rails.application.routes.draw do
  get 'sessions/new'
  resources :dishes
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
