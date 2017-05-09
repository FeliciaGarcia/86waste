Rails.application.routes.draw do

  devise_for :users

  namespace :api do
  	# resources :users
    resources :posts
  end

  root to: 'client#index'
  get '*path', to: 'client#index'
end
