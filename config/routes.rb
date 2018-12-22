Rails.application.routes.draw do
  get 'horses/index'
  get 'horses/show'
  root to: "home#index"
  resource :user, only: %i(show), path: 'profile'
  devise_for :users
  resources :logs, only: %i(create new edit show destroy update)
  resources :boards, only: %i(index new create show edit update destroy)
end
