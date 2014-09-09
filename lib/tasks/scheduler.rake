namespace :scheduler do
	
	task :pets_grow_hungry => :environment do
		Pet.all.each do |pet|
			pet.grow_hungry
		end
	end

	task :feed_pets => :environment do
		Pet.all.each do |pet|
			pet.feed
		end
	end

end