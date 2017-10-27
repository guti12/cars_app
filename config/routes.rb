Rails.application.routes.draw do
	get '/' => 'cars#index'

	get '/cars/new' => 'cars#new'
	post '/create_cars' => 'cars#create'

	get '/cars/:id' => 'cars#show'

	get '/cars/:id/edit' => 'cars#edit'

	patch '/cars/:id' => 'cars#update'

	delete '/cars/:id' => 'cars#delete'
	
end
