class Tweet < ActiveRecord::Base
	belongs_to :user

	def initialize
		baseurl = "https://api.twitter.com"
		screen_name = current_user.screen_name
		address = URI("#{baseurl}/1.1/statuses/user_timeline.json?screen_name=#{screen_name}")
		http = Net::HTTP.new address.host, address.port
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_PEER
		consumer_key = Rails.application.secrets.twitter_consumer_key
		access_token = Rails.application.secrets.twitter_access_token
		request = Net::HTTP::Get.new address.request_uri
		request.oauth! http, consumer_key, access_token
		http.start
	end

	def get_tweets
		response = http.request(request)
		tweets = parse_user_response(response)
	end

end
