class PetsController < ApplicationController

	def index
		@pet = Pet.find_by(user: current_user.id)
	end

	def show
	end

	def new
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