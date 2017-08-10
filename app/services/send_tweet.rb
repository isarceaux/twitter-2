class SendTweet

  attr_accessor :client

  def initialize(tweet_content)
    log_in_to_twitter
    send_tweet(tweet_content)
  end

private
  def log_in_to_twitter
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
      config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
    end
  end

  def send_tweet(tweet_content)
    @client.update(tweet_content)
  end
end