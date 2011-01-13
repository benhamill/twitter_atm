class TwitterAtm::Client
  def self.pin_url(consumer_key, consumer_secret)
    client = TwitterOAuth::Client.new(:consumer_key => consumer_key, :consumer_secret => consumer_secret)
    client.request_token.authorize_url
  end
end
