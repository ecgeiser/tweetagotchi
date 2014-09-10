class Tweet < ActiveRecord::Base
	belongs_to :user
	after_initialize :init

	def init
		@twitter = Twitter::REST::Client.new do |config|
	  	config.consumer_key = Rails.application.secrets.twitter_consumer_key
	  	config.consumer_secret = Rails.application.secrets.consumer_secret
	  	config.oauth_token = Rails.application.secrets.twitter_access_token
	  	config.oauth_token_secret = Rails.application.secrets.oauth_token_secret
		end
	end

	def get_tweets
		tweets = []
		user = user.screen_name
	 	@twitter.user_timeline(@user, {count: 3}).each do |tweet|
	 		tweets << tweet
	 	end
	end
end
