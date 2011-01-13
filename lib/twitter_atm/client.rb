require 'twitter_oauth'

class TwitterAtm::Client
  attr_accessor :client, :request_token

  def initialize consumer_key, consumer_secret
    @client = TwitterOAuth::Client.new(:consumer_key => consumer_key, :consumer_secret => consumer_secret)
  end

  def authorize_url
    @request_token = client.request_token
    request_token.authorize_url
  end

  def authorize pin
    client.authorize request_token.token, request_token.secret, :pin => pin.to_i
    access_token = client.send :access_token

    [access_token.token, access_token.secret]
  end
end
