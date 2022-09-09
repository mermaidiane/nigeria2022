substate <- read.csv("/Users/dianabadalan/Desktop/Nigeria-r8srkd.csv", sep = ';')
followers <- read.csv("/Users/dianabadalan/Downloads/Twitter_Follower_Collector_(1)/result.csv", sep = ',')
substate_new <- subset(substate, select = c('GEO.NAME', 'ADMIN.1.code'))
substate_final <- substate_new %>%
  slice(9760:65534)

substate_final = substate_final %>% 
  mutate(
    ADMIN.1.code = recode(ADMIN.1.code, '51' = "Sokoto", 
                    '50' = "Rivers",
                    '49' = "Plateau",
                    '32' = "Oyo",
                    '48' = "Ondo",
                    '16' = "Ogun",
                    '31' = "Niger",
                    '5' = "Lagos",
                    '30' = "Kwara",
                    '24' = "Katsina",
                    '29' = "Kano",
                    '23' = "Kaduna",
                    '28' = "Imo",
                    '22' = "Cross River",
                    '27' = "Borno",
                    '26' = "Benue",
                    '46' = "Bauchi",
                    '25' = "Anambra" ,
                    '21' = "Akwa Ibom" ,
                    '11' = "Federal Capital Territory" ,
                    '45' = "Abia" ,
                    '36' = "Delta" ,
                    '35' = "Adamawa" ,
                    '37' = "Edo" ,
                    '47' = "Enugu" ,
                    '39' = "Jigawa" ,
                    '52' = "Bayelsa" ,
                    '53' = "Ebonyi" ,
                    '54' = "Ekiti" ,
                    '55' = "Gombe" ,
                    '56' = "Nasarawa" ,
                    '57' = "Zamfara" ,
                    '40' = "Kebbi" ,
                    '41' = "Kogi" ,
                    '42' = "Osun" ,
                    '43' = "Tabara" ,
                    '44' = "Yobe")
  )

names(substate_final)[names(substate_final) == "GEO.NAME"] <- "city"
names(substate_final)[names(substate_final) == "ADMIN.1.code"] <- "state"

final_new <- merge(x=final_ordered, y=substate_final, by=c('city'), all.x=TRUE)
final_new = final_new %>% 
  distinct(city, .keep_all = TRUE) %>%
  select(-state.x)

names(final_new)[names(final_new) == "state.y"] <- "state"

final_new <- final_new %>%
  select(city, state, everything())

sum(is.na(final_new$state))

write.csv(final_new, '/Users/dianabadalan/Desktop/cities_with_states.csv', row.names = FALSE)

final_new <- order(final$)


library("readxl")
library('dplyr')

city <- read_excel("/Users/dianabadalan/Desktop/ldf.xlsx")
state <- read.csv("/Users/dianabadalan/Downloads/ng.csv")

state_final <- subset(state, select = c('city', 'admin_name'))
names(city)[names(city) == "Agglomeration_Name"] <- "city"
final <- merge(x=city, y=state_final, by='city', all.x=TRUE)
final_ordered <- order(final$)
names(final)[names(final) == "admin_name"] <- "state" final

final_new <- final %>%
  select(city, state, everything())


final_ordered <- final_new[order(final_new$state),]





write.csv(final_ordered, '/Users/dianabadalan/Desktop/cities_with_states.csv', row.names = FALSE)

data_updated <- data %>%
  filter(sentiment == "negative")

data_updated$value <- as.numeric(data_updated$value)

data_updated$value <- -abs(data_updated$value)

data_updated_2 <- data %>%
  filter(sentiment == c("skip", 'neutral'))

data_updated_2$value <- data_updated_2$value == 0 
data_updated_2$value <- replace(data_updated_2$value, FALSE, 0)

total = merge(x=data,y=data_updated,by=c("title", 'datetime'),all.x=TRUE)
final = subset(total, select = c('title', 'sentiment.x', 'value.y'))

write.csv(final,'/Users/dianabadalan/Desktop/final.csv', row.names = FALSE)

text <- read_excel("/Users/dianabadalan/Desktop/texts.xlsx")
text_final <- subset(text, select = c('text', 'datetime'))

text_final$datetime <- format(as.Date(text_final$datetime), "%Y-%m")
write.csv(text_final,'/Users/dianabadalan/Desktop/text_final.csv', row.names = FALSE)

write.csv(data,'/Users/dianabadalan/Desktop/data.csv', row.names = FALSE)
