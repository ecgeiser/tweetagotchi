class Pet < ActiveRecord::Base
	belongs_to :user

	def initialize(user, name, pet_type)
		@user = :user
		@name = :name
		@pet_type = :pet_type
		@hunger = 0
	end

end