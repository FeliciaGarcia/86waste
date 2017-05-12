Rails.application.routes.draw do

  devise_for :users

  namespace :api do
  	# resources :users
    resources :posts
  end

  root to: 'client#index'
  get '*path', to: 'client#index'

  get 'auth/:provider/callback', to: "sessions#create"

  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'
end
