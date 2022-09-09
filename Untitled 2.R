one <- read.csv('/Users/dianabadalan/Desktop/dawisureplies.csv') 
two <- read.csv('/Users/dianabadalan/Desktop/abubakarmusadk1replies.csv')
three <- read.csv('/Users/dianabadalan/Desktop/kyusufabbareplies.csv')

library(dplyr)
install.packages("tidyr")                        # Install & load tidyr package
library("tidyr")

one <- arrange(one, desc(likes_count), desc(retweets_count), desc(replies_count))
two <- arrange(two, desc(likes_count), desc(retweets_count), desc(replies_count))
three <- arrange(three, desc(likes_count), desc(retweets_count), desc(replies_count))

table(one$username)
sort(table(three$name),decreasing=TRUE)[1:10]
sort(table(data$name),decreasing=TRUE)[1:50]

kwankwaso <- read.csv('/Users/dianabadalan/Downloads/result-2.csv')

kwankwaso_clean <- na.omit(kwankwaso_clean)

final <- kwankwaso_clean[rowSums(is.na(kwankwaso_clean)) == 0,]

final <- kwankwaso_clean[!apply(kwankwaso_clean == "", 1, all),]

kwankwaso_kano <- kwankwaso %>%
  filter(grepl('Kano|Dala|Dambatta|Garzo|Cwale|Gwarzo|Hotoro|Kabuga|Karaye|Nassarawa', location, ignore.case = TRUE))
