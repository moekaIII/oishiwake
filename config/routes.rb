Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'user', to: 'users/registrations#index'
  end
  root "tops#index"

  resources :dishes do
    collection do
      post :confirm
      get :search
    end
  end
  resources :pages, only: [:show, :destroy]
  resources :images, only: [:new, :create]
  resources :favorites, only: [:create, :destroy]
  resources :conversations do
    resources :messages
  end
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
