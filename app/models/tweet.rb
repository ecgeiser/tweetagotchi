class Tweet < ActiveRecord::Base
	belongs_to :user

	def self.get_tweets(user)
	  consumer_key = OAuth::Consumer.new(Rails.application.secrets.twitter_consumer_key, Rails.application.secrets.consumer_secret)
	  oauth_token = OAuth::Token.new(Rails.application.secrets.twitter_access_token, Rails.application.secrets.oauth_token_secret)

	  baseurl = "https://api.twitter.com/"
		sn = user
		path = "1.1/statuses/user_timeline.json?screen_name=#{sn}&count=1"
		address = URI("#{baseurl}#{path}")

		http = Net::HTTP.new address.host, address.port
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    
    request = Net::HTTP::Get.new address.request_uri
    request.oauth! http, consumer_key, oauth_token
    http.start
    response = http.request(request)

    JSON.parse(response.body)
	end
end

