require 'twitter'


#### Get your twitter keys & secrets:
#### https://dev.twitter.com/docs/auth/tokens-devtwittercom
twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = 'T2Ea8o3Hdr5gLM1EsZER0BCjn'
  config.consumer_secret = 'qt8NhAHqUGjz50eAWwraR2tZPTAIONAJglAbDoI88JXScn423Q'
  config.access_token = '100622301-mArSE3ZDVjvwzi6blYTGFQYBtBF9kCtuoQBmZtBB'
  config.access_token_secret = '8XQTvaSmGItTWe1fRB2FKDEbnwrm3KJ3uJEdUjDK3VXPC'
end

search_term = URI::encode('MarketUpdate')

SCHEDULER.every '10m', :first_in => 0 do |job|
  begin
    tweets = twitter.search("#{search_term}")

    if tweets
      tweets = tweets.map do |tweet|
        { name: tweet.user.name, body: tweet.text, avatar: tweet.user.profile_image_url_https }
      end
      send_event('twitter_mentions', comments: tweets)
    end
  rescue Twitter::Error
    puts "\e[33mFor the twitter widget to work, you need to put in your twitter API keys in the jobs/twitter.rb file.\e[0m"
  end
end
