# Wed Dec 20 11:33:12 2017 ------------------------------

library(ROAuth)
install.packages('twitteR')
library(twitteR)

consumer_key<-'JN2Ax1netJVkZlmOdxNjuDv6U'
consumer_seceret<-'Ck80Dyt4pznsbRQ7KN4jcva0fsm51MDcQmx3nepWoMxkstqBSj'
access_token<-'206616022-wXaBsUWbVe5oojulDHh0WgeSm1k6CileqCFSu4IW'
access_seceret<-'8gHmiUrfdTcJcUPbpr0NKNaqLkeevg8cIZ0T0kykPMQMY'

setup_twitter_oauth(consumer_key,consumer_seceret,access_token,access_seceret)
cred<-OAuthFactory$new(consumerKey='JN2Ax1netJVkZlmOdxNjuDv6U', consumerSecret='Ck80Dyt4pznsbRQ7KN4jcva0fsm51MDcQmx3nepWoMxkstqBSj',requestURL='https://api.twitter.com/oauth/request_token',accessURL='https://api.twitter.com/oauth/access_token',authURL='https://api.twitter.com/oauth/authorize')
cred$handshake(cainfo="cacert.pem")
               
#extracting tweets

searchTwitter('',n=100)
searchTwitter('',lang="en",n=10)

sr<-userTimeline('',n=10)
twListToDF(sr)
