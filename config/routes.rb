Rails.application.routes.draw do
  get 'comments/edit'
  get 'horses/index'
  get 'horses/show'
  root to: "home#index"
  resource :user, only: %i(show), path: 'profile'
  devise_for :users
  resources :logs, only: %i(create new edit show destroy update)
  # resources :boards, only: %i(index new create show edit update destroy)
  resources :boards do
    resources :comments, only: %i(create destroy), shallow: true
  end
end