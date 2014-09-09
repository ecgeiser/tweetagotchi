class Pet < ActiveRecord::Base
	belongs_to :user
	has_one :pet_type
	after_initialize :init
	before_create :assign_image

	def init
		self.hunger ||= 0
	end

	def grow_hungry
		self.hunger += 1 unless self.hunger == 3
		self.save
		self.assign_image
	end

	def feed
		recent_tweet_count = user.recent_tweets.count
		if recent_tweet_count > 0 && self.hunger != 0
			self.hunger -= 1
		end
		self.save
		self.assign_image
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

		self.image = image
		self.save
	end

end