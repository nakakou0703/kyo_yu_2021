Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :items do
    collection do
      get 'search'
    end
    resources :web_confirmations, only: [:create]
  end
  resources :users, only: [:show, :destroy]
end
