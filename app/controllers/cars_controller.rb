class CarsController < ApplicationController
	def index
		 @all_cars = Car.all
	end

	def new
		@car = Car.new
		render "new.html.erb"
	end

	def create
		@car = Car.new(year: params[:year],
									 make: params[:make],
									 model: params[:model],
									 color: params[:color]
			)
		@car.save
		redirect_to "/"
	end

	def show
		@car = Car.find_by(id: params[:id])
	end
	
end
