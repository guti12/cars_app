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

	def edit
		@car = Car.find_by(id: params[:id])
		render 
	end

	def update
		@car = Car.find_by(id: params[:id])
		# @car.assign_attributes(
		# 											 year: params[:year],
		# 											 make: params[:make],
		# 											 model: params[:model],
		# 											 color: params[:color])
		# @car.save
		@car.update(year: params[:year],
								make: params[:make],
								model: params[:model],
								color: params[:color])
		redirect_to '/'
	end

	def delete
		@car = Car.find_by(id: params[:id])
		@car.destroy

		redirect_to '/'
	end
	
end
