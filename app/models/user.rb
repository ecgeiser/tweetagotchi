class User < ActiveRecord::Base
	has_one :pet, dependent: :destroy
	has_many :tweets

	def self.create_with_omniauth(auth)
	  create! do |user|
	    user.provider = auth["provider"]
	    user.uid = auth["uid"]
	    user.name = auth["info"]["name"]
	    user.screen_name = auth["info"]["screen_name"]
	  end
	end

	def recent_tweets
		self.tweets.where(":created_at > 1.hour.ago.to_date")
	end

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.hash(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

	def create_remember_token
		remember_token = User.hash(User.new_remember_token)
	end

	def normalize_fields
		self.email.downcase!
	end

end