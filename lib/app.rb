require 'twitter'
  require 'dotenv'
  require 'pry'

  Dotenv.load('.env')

  handle = ["@talmidiel_", "@rouet_julien", "@Ana16233393", "@8UK0W5K1", "@jcunniet", "@charleedouard1", "@Aziliz31", "@ssoumier", "@marionsouzeau", "@gaellombart", "@MorganeRcd", "@elodieangelss"]


# Appelez les clés API Twitter et connectez-vous en mode normal
  def rest_connection
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end
  return client
end


# Appelez les clés API Twitter et connectez-vous en mode streaming
def streaming_connection
  client_stream = Twitter::Streaming::Client.new do |config|
   config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
   config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
   config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
   config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end
    return client_stream
end
 


#1. Il va dire bonjour 
# selectionne 5 handle au hazard 
#handle = 5.times.map{ handle[rand(0...handle.length)] }.uniq

# cette ligne tweet chaque @journaliste du tableau aléatoire
#handle.each { |chr|  rest_connection.update("Hello #{chr} #bonjour_monde @the_hacking_pro")}

#2. Il va liker bonjour
#aimer 25 dernier tweet avec le hashtag #bonjour_monde
#rest_connection.search("#bonjour_monde", result_type: "recent").take(25).collect do |tweet|
  #rest_connection.fav tweet
#end

#3. Il va follow bonjour 
#follow les 20 dernières personnes qui ont twitter avec le hastag #bonjour_monde
#rest_connection.search("#bonjour_monde", result_type: "recent").take(20).collect do |tweet|
  #rest_connection.follow tweet.user
#end

#4 Il like et follow en live
#streaming_connection.filter(track: "#bonjour_monde") do |object|
  #rest_connection.fav object # favorite the tweet
  #rest_connection.follow object.user # follow the user who tweeted
#end
  #puts object

#5 Les tests 
