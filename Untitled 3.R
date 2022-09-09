data <- read.csv('/Users/dianabadalan/Desktop/роботаю/data.csv')
library(dplyr)

filtered_df <- filter(data, grepl("Allah", tweet, ignore.case = TRUE))

write.csv(filtered_df,'/Users/dianabadalan/Desktop/Allah.csv', row.names = FALSE)

data1 <- read.csv('/Users/dianabadalan/Downloads/Twitter_Tweet_Extractor/result.csv')
data2 <- read.csv('/Users/dianabadalan/Downloads/Twitter_Tweet_Extractor-2/result.csv')

follotweet <- rbind(data1, data2)

write.csv(follotweet,'/Users/dianabadalan/Desktop/follotweet.csv', row.names = FALSE)

followers <- followers %>%
  filter()

followers <- read.csv('/Users/dianabadalan/Downloads/Twitter_Tweet_Extractor-3/result.csv')
geo <- read.csv('/Users/dianabadalan/Desktop/роботаю/data.csv')
dop <- read.csv('/Users/dianabadalan/PycharmProjects/pythonProject19/followerdumar.csv')

fol_final <- select(followers, text, profileUser)
names(fol_final)[names(fol_final) == "text"] <- "tweet"
names(fol_final)[names(fol_final) == "profileUser"] <- "username"

dop_final <- select(dop, tweet, username)

followers_final <- rbind(fol_final, dop_final)

followers_final <- followers_final %>%
  distinct()

result <- grepl('education|uni|university|school|teach|teacher', followers_final$tweet)
table(result)

geo_get <- select(geo, tweet, username)
download <- geo_get[!grepl("Yusuf",geo_get$tweet),]

geo_get1 <- geo_get %>%
  filter(grepl('Abacha', tweet))

geo_get2 <- geo_get %>%
  filter(grepl('Abubakar', tweet))

geo_get3 <- geo_get %>%
  filter(grepl('Gida', tweet))

geo_get4 <- geo_get %>%
  filter(grepl('Nasiru', tweet))

geo_get5 <- geo_get %>%
  filter(grepl('Labour', tweet))

geo_get6 <- geo_get %>%
  filter(grepl('Alhaji', tweet))

geo_get7 <- geo_get %>%
  filter(grepl('Bola', tweet))

geo_names <- rbind(geo_get1, geo_get2, geo_get3, geo_get4, geo_get5, geo_get6, geo_get7)

write.csv(followers_final1,'/Users/dianabadalan/Desktop/geo_abacha.csv', row.names = FALSE)

followers_final1 <- followers_final %>%
  filter(grepl('Abacha', tweet))

followers_final2 <- followers_final %>%
  filter(grepl('Abubakar', tweet))

followers_final3 <- followers_final %>%
  filter(grepl('Gida', tweet))

sample <- data %>%
  filter(grepl('Dawisu', tweet, ignore.case = TRUE))

followers_final5 <- followers_final %>%
  filter(grepl('Labour', tweet))

followers_final6 <- followers_final %>%
  filter(grepl('Alhaji', tweet))

followers_final7 <- followers_final %>%
  filter(grepl('Bola', tweet))

followers_final <- rbind(followers_final1, followers_final2, followers_final3, followers_final4, followers_final5, followers_final6, followers_final7)

data <- arrange(data, desc(likes_count), desc(retweets_count), desc(replies_count))

popular_tweets <- data %>%
  slice(1:50)

popular_tweets <- popular_tweets %>%
  select(date, time, username, name, tweet, language, photos, replies_count, retweets_count, likes_count, hashtags, link, quote_url, reply_to)

follower_person_1 <- followers_final %>%
  filter(grepl('Buhari', tweet, ignore.case = TRUE))

follower_person_2 <- followers_final %>%
  filter(grepl('Dawisu|Peacock', tweet, ignore.case = TRUE))

follower_person_3 <- followers_final %>%
  filter(grepl('Kwankwaso|Rabiu', tweet, ignore.case = TRUE))

follower_person_4 <- followers_final %>%
  filter(grepl('Obi|PeterObi|Peter', tweet, ignore.case = TRUE))

follower_person_5 <- followers_final %>%
  filter(grepl('Tinubu|Asiwaju', tweet, ignore.case = TRUE))

follower_person_6 <- followers_final %>%
  filter(grepl('Atiku', tweet, ignore.case = TRUE))

follower_person_7 <- followers_final %>%
  filter(grepl('Ganduje|Khadimul', tweet, ignore.case = TRUE))

follower_person_8 <- followers_final %>%
  filter(grepl('Gawuna', tweet, ignore.case = TRUE))

follower_person_9 <- followers_final %>%
  filter(grepl('Abacha', tweet, ignore.case = TRUE))

follower_person_10 <- followers_final %>%
  filter(grepl('Abba.*Yusuf|GidaGida|Gida-Gida|Gida gida', tweet, ignore.case = TRUE))

follower_person_11 <- followers_final %>%
  filter(grepl('Aminu.*Bayero', tweet, ignore.case = TRUE))

follower_politic_1 <- followers_final %>%
  filter(grepl('APC', tweet, ignore.case = TRUE))

follower_politic_2 <- followers_final %>%
  filter(grepl('PDP', tweet, ignore.case = TRUE))

follower_politic_3 <- followers_final %>%
  filter(grepl('NNPP', tweet, ignore.case = TRUE))

follower_politic_4 <- followers_final %>%
  filter(grepl('LP|Labour', tweet, ignore.case = TRUE))

follower_politic_5 <- followers_final %>%
  filter(grepl('PRP', tweet, ignore.case = TRUE))

follower_theme_1 <- followers_final %>%
  filter(grepl('budget', tweet, ignore.case = TRUE))

follower_theme_2 <- followers_final %>%
  filter(grepl('drugs|heroin|weed', tweet, ignore.case = TRUE))

follower_theme_3 <- followers_final %>%
  filter(grepl('vote|election', tweet, ignore.case = TRUE))

follower_theme_4 <- followers_final %>%
  filter(grepl('alcohol', tweet, ignore.case = TRUE))

follower_theme_5 <- followers_final %>%
  filter(grepl('money', tweet, ignore.case = TRUE))

follower_theme_6 <- followers_final %>%
  filter(grepl('education|university|school|teach', tweet, ignore.case = TRUE))

follower_theme_7 <- followers_final %>%
  filter(grepl('economy|salary|poverty|poor|wage|price|income|tax', tweet, ignore.case = TRUE))

follower_theme_8 <- followers_final %>%
  filter(grepl('transport|road', tweet, ignore.case = TRUE))

follower_theme_9 <- followers_final %>%
  filter(grepl('food|bread|yum|nutrition', tweet, ignore.case = TRUE))

follower_theme_10 <- followers_final %>%
  filter(grepl('water', tweet, ignore.case = TRUE))

follower_theme_11 <- followers_final %>%
  filter(grepl('bandits|murder|crime', tweet, ignore.case = TRUE))

follower_theme_12 <- followers_final %>%
  filter(grepl('terrorism|Boko Haram|terror', tweet, ignore.case = TRUE))

follower_theme_13 <- followers_final %>%
  filter(grepl('corruption|fraud|laundry|bribe', tweet, ignore.case = TRUE))

follower_theme_14 <- followers_final %>%
  filter(grepl('medicine|disease|treatment|pills|drugs', tweet, ignore.case = TRUE))

follower_theme_15 <- followers_final %>%
  filter(grepl('tax', tweet, ignore.case = TRUE))

follower_theme_16 <- followers_final %>%
  filter(grepl('EndSARS', tweet, ignore.case = TRUE))

follower_theme_17 <- followers_final %>%
  filter(grepl('electricity|electr|cut.*power|generator', tweet, ignore.case = TRUE))

follower_theme_18 <- followers_final %>%
  filter(grepl('price', tweet, ignore.case = TRUE))

follower_theme_19 <- followers_final %>%
  filter(grepl('petrol|gasoline|gas|fuel', tweet, ignore.case = TRUE))

followers_tweet <- followers_final %>%
  select(tweet)

follower_peacock <- followers_final %>%
  filter(grepl('Peacock', tweet, ignore.case = TRUE))

geo_peacock <- data %>%
  filter(grepl('Peacock', tweet, ignore.case = TRUE))

geo_peacock <- geo_peacock %>%
  select(tweet, username)

geo_followers_peacock <- rbind(geo_peacock, follower_peacock)

write.csv(geo_followers_peacock,'/Users/dianabadalan/Desktop/peacock_tweet.csv', row.names = FALSE)
