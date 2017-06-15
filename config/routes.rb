Rails.application.routes.draw do

  	  devise_for :users
   			# controllers: {omniauth_callbacks: "omniauth_callbacks"}
   	  root to: 'client#index'
   	 
	  namespace :api do
	  resources :posts
	  resources :businesses
	 
	  
	end
	get '*path' => 'client#index'
	# get '/auth/:provider/callback' => 'sessions#create'
end
