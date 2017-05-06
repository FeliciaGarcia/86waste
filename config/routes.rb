Rails.application.routes.draw do
  get 'home/about'

  get 'home/cities'

  get 'home/niehgborhoods'

  get 'static_pages/neighborhoods'

  devise_for :users
	get 'home' => 'static_pages#home'
	get 'about' => 'static_pages#about'
	get 'cities' => 'static_pages#cities'
	root "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
