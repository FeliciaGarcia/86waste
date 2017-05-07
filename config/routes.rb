Rails.application.routes.draw do

  

  get 'home/about'

  get 'home/cities'

  get 'home/niehgborhoods'

  

  devise_for :users
  get '*path', to: 'client#index'
	get 'home' => 'static_pages#home'
	get 'about' => 'static_pages#about'
	get 'cities' => 'static_pages#cities'
  get 'neighborhoods' => 'static_pages#neighborhoods'
	root to: 'client#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
