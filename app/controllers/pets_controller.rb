class PetsController < ApplicationController

	def index
		@pets = Pet.all
	end

	def show
		@pet = Pet.find( params[:id] )
	end

	def new
		@pet = Pet.new
		@types = PetType.all
	end

	def create
		@pet = Pet.new(pet_params.merge(user_id: current_user.id))
		if @pet.save
			redirect_to @pet
		end
	end

	def edit
		@pet = Pet.find( params[:id] )
	end

	def update
		@pet = Pet.find( params[:id] )
		if @pet.update(pet_params)
			redirect_to @pet
		end
	end

	def destroy
		@pet = Pet.find( params[:id] )
		@pet.destroy
		redirect_to pets_url
	end

	private

	def pet_params
		params.require(:pet).permit(:name, :pet_type_id)
	end

end