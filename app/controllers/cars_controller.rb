class CarsController < ApplicationController
	def index
		 @all_cars = Cars.all
	end

	def show
		@car = Cars.find_by(id: params[:id])
	end
	
end
