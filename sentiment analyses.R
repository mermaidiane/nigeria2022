library(dplyr)

data_geo <- read.csv('/Users/dianabadalan/Downloads/followers_sentiments.csv')

data_geo$sentiment[data_geo$sentiment >= 0.5] <- 'positive'
data_geo$sentiment[data_geo$sentiment < -0.5] <- 'negative'
data_geo$sentiment[data_geo$sentiment == 0] <- 'neutral'
data_geo$sentiment[data_geo$sentiment < 0.5] <- 'neutral'
table(data_geo$sentiment)

data_geo <- data_geo %>%
  select(tweet, sentiment)

data_followers <- read.csv('/Users/dianabadalan/Downloads/geo_sentiments.csv')

data_followers$sentiment[data_followers$sentiment >= 0.5] <- 'positive'
data_followers$sentiment[data_followers$sentiment < -0.5] <- 'negative'
data_followers$sentiment[data_followers$sentiment == 0] <- 'neutral'
data_followers$sentiment[data_followers$sentiment < 0.5] <- 'neutral'
table(data_followers$sentiment)

data_followers <- data_followers %>%
  select(tweet, sentiment)

geo_person_1 <- data_geo %>%
  filter(grepl('Buhari', tweet, ignore.case = TRUE))
table(follower_person_1$sentiment)

geo_person_2 <- data_geo %>%
  filter(grepl('Dawisu', tweet, ignore.case = TRUE))
table(follower_person_2$sentiment)

geo_person_3 <- data_geo %>%
  filter(grepl('Kwankwaso|Rabiu', tweet, ignore.case = TRUE))
table(follower_person_3$sentiment)

geo_person_4 <- data_geo %>%
  filter(grepl('Obi|PeterObi|Peter', tweet, ignore.case = TRUE))
table(follower_person_4$sentiment)

geo_person_5 <- data_geo %>%
  filter(grepl('Tinubu|Asiwaju', tweet, ignore.case = TRUE))
table(follower_person_5$sentiment)

geo_person_6 <- data_geo %>%
  filter(grepl('Atiku', tweet, ignore.case = TRUE))
table(follower_person_6$sentiment)

geo_person_7 <- data_geo %>%
  filter(grepl('Ganduje|Khadimul', tweet, ignore.case = TRUE))
table(follower_person_7$sentiment)

geo_person_8 <- data_geo %>%
  filter(grepl('Gawuna', tweet, ignore.case = TRUE))
table(follower_person_8$sentiment)

geo_person_9 <- data_geo %>%
  filter(grepl('Wali', tweet, ignore.case = TRUE))
table(follower_person_9$sentiment)

geo_person_10 <- data_geo %>%
  filter(grepl('Abba.*Yusuf|GidaGida|Gida-Gida|Gida gida', tweet, ignore.case = TRUE))
table(follower_person_10$sentiment)

geo_person_11 <- data_geo %>%
  filter(grepl('Aminu.*Bayero', tweet, ignore.case = TRUE))
table(follower_person_11$sentiment)

geo_politic_1 <- data_geo %>%
  filter(grepl('APC', tweet, ignore.case = TRUE))
table(follower_politic_1$sentiment)

geo_politic_2 <- geo_politic_2 %>%
  filter(!grepl('amp', tweet, ignore.case = TRUE))

table(follower_theme_19$sentiment)

geo_politic_2 <- data_geo %>%
  filter(grepl('PDP', tweet, ignore.case = TRUE))

geo_politic_3 <- data_geo %>%
  filter(grepl('NNPP', tweet, ignore.case = TRUE))

geo_politic_4 <- data_geo %>%
  filter(grepl('LP|Labour', tweet, ignore.case = TRUE))

geo_politic_5 <- data_geo %>%
  filter(grepl('PRP', tweet, ignore.case = TRUE))

geo_theme_1 <- data_geo %>%
  filter(grepl('budget', tweet, ignore.case = TRUE))

geo_theme_2 <- data_geo %>%
  filter(grepl('drugs|heroin|weed', tweet, ignore.case = TRUE))

geo_theme_3 <- data_geo %>%
  filter(grepl('vote|election', tweet, ignore.case = TRUE))

geo_theme_4 <- data_geo %>%
  filter(grepl('alcohol', tweet, ignore.case = TRUE))

geo_theme_5 <- data_geo %>%
  filter(grepl('money', tweet, ignore.case = TRUE))

geo_theme_6 <- data_geo %>%
  filter(grepl('education|university|school|teach', tweet, ignore.case = TRUE))

geo_theme_7 <- data_geo %>%
  filter(grepl('economy|salary|poverty|poor|wage|price|income|tax', tweet, ignore.case = TRUE))

geo_theme_8 <- data_geo %>%
  filter(grepl('transport|road', tweet, ignore.case = TRUE))

geo_theme_9 <- data_geo %>%
  filter(grepl('food|bread|yum|nutrition', tweet, ignore.case = TRUE))

geo_theme_10 <- data_geo %>%
  filter(grepl('water', tweet, ignore.case = TRUE))

geo_theme_11 <- data_geo %>%
  filter(grepl('bandits|murder|crime', tweet, ignore.case = TRUE))

geo_theme_12 <- data_geo %>%
  filter(grepl('terrorism|Boko Haram|terror', tweet, ignore.case = TRUE))

geo_theme_13 <- data_geo %>%
  filter(grepl('corruption|fraud|laundry|bribe', tweet, ignore.case = TRUE))

geo_theme_14 <- data_geo %>%
  filter(grepl('medicine|disease|treatment|pills|drugs', tweet, ignore.case = TRUE))

geo_theme_15 <- data_geo %>%
  filter(grepl('tax', tweet, ignore.case = TRUE))

geo_theme_16 <- data_geo %>%
  filter(grepl('EndSARS', tweet, ignore.case = TRUE))

geo_theme_17 <- data_geo %>%
  filter(grepl('electricity|electr|cut.*power|generator', tweet, ignore.case = TRUE))

geo_theme_18 <- data_geo %>%
  filter(grepl('price', tweet, ignore.case = TRUE))

geo_theme_19 <- data_geo %>%
  filter(grepl('petrol|gasoline|gas|fuel', tweet, ignore.case = TRUE))

write.csv(geo_theme_1,'/Users/dianabadalan/Desktop/sentiment/geo_theme_1.csv', row.names = FALSE)

