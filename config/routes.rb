Rails.application.routes.draw do
	root 'sessions#new'
	get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
	post '/logout' => 'sessions#destroy'
	get '/welcome' => 'sessions#welcome'
	get '/secrets' => 'secrets#index'
	get '/secrets/show' => 'secrets#show'
end
