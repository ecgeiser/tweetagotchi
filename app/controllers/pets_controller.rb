class PetsController < ApplicationController

	def index
		@pets = Pet.all
	end

	def show
	end

	def new
		@pet = Pet.new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def pet_params
		params.require(:pet).permit(:name, :pet_type)
	end

end