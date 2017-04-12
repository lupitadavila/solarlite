Rails.application.routes.draw do

	root "application#index"

	resources :users
	resources :presales
	resources :events

	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'

end
