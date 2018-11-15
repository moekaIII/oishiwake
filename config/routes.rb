Rails.application.routes.draw do
  resources :dishes do
    collection do
      post :confirm
    end
  end
  resources :images, only: [:new, :create]
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
  resources :conversations do
    resources :messages
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
