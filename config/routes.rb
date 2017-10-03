Rails.application.routes.draw do
	get '/' => 'cars#index'

	get '/cars/new' => 'cars#new'
	post '/create_cars' => 'cars#create'

	get '/cars/:id' => 'cars#show'
	
end
