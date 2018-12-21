Rails.application.routes.draw do
  get 'horses/index'
  get 'horses/show'
  root to: "home#index"
  resource :user, only: %i(show), path: 'profile'
  devise_for :users
  resources :log, only: %i(create new edit show destroy update)
end
