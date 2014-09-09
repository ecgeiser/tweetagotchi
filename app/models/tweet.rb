class Tweet < ActiveRecord::Base
	belongs_to :user
	after_initialize :init

	def init
	  consumer_key = Rails.application.secrets.twitter_consumer_key
	  consumer_secret = Rails.application.secrets.consumer_secret
	  oauth_token = Rails.application.secrets.twitter_access_token
	  oauth_token_secret = Rails.application.secrets.oauth_token_secret

	  @user = user.screen_name
	 	@tweets = Twitter.user_timeline(@user, {count: 3})
	end
end
