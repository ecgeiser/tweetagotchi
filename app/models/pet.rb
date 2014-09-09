class Pet < ActiveRecord::Base
	belongs_to :user
	has_one :pet_type
	after_initialize :init

	def init
		self.hunger ||= 0
	end

	def assign_image
		animal = self.pet_type_id
		case self.hunger
		when 3
			image = PetType.find(animal).photo_url_1
		when 2
			image = PetType.find(animal).photo_url_2
		when 1
			image = PetType.find(animal).photo_url_3
		when 0
			image = PetType.find(animal).photo_url_4
		end

		self.update(image: image)
	end

end