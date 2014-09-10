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

	task :get_user_tweets => :environment do
		User.all.each do |user|
			recent_tweet = user.tweets
			timestamp = recent_tweet[0]["created_at"]
			if timestamp > 24.hours.ago
				puts "You have not tweeted recently"
				# user.pet.grow_hungry
			else
				puts "You have tweeted recently"
				# user.pet.feed
			end
		end
	end

end