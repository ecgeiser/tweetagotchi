class Tweet < ActiveRecord::Base
	belongs_to :user

	def initialize
	  account = Settings['twitter']
	 
	  Twitter.configure do |config|
	   config.consumer_key = account['consumer_key']
	   config.consumer_secret = account['consumer_secret']
	   config.oauth_token = account['oauth_token']
	   config.oauth_token_secret = account['oauth_token_secret']
	  end

	  @user = user.screen_name
	 	@tweets = Twitter.user_timeline(@user, {count: 3})
	end
end
