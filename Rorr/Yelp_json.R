setwd('/Users/rorr/PythonStuff/Assignments/Charlotte_BizPredictions/Rorr/yelp_dataset/')
library(dplyr)
#library(jsonlite)
#library(RJSONIO)
library(rjson)
#library(plyr)
library()

review_file <- fromJSON('yelp_academic_dataset_review.json', nullValue = NA)
review_data<-jsonlite::stream_in(textConnection(readLines(review_file, n=10000)),verbose=T)
review=head(review_data, 50)
write.xlsx(review, 'review.xlsx')

checkin_file <- fromJSON('yelp_academic_dataset_checkin.json', nullValue = NA)
checkin_data<-jsonlite::stream_in(textConnection(readLines(checkin_file, n=10000)),verbose=T)
checkin=head(checkin_data, 50)
write.xlsx(checkin, 'checkin.xlsx')

tip_file <- fromJSON('yelp_academic_dataset_tip.json', nullValue = NA)
tip_data<-jsonlite::stream_in(textConnection(readLines(tip_file, n=10000)),verbose=T)
tip=head(tip_data, 50)
write.xlsx(tip, 'tip.xlsx')

user_file <- "yelp_academic_dataset_user.json"
user_data<-jsonlite::stream_in(textConnection(readLines(user_file, n=10000)),verbose=T)
user=head(user_data, 50)
write.xlsx(user, 'user.xlsx')

biz_file <- 'yelp_academic_dataset_business.json'
biz_data<-jsonlite::stream_in(textConnection(readLines(biz_file, n=10000)),verbose=T)
biz_sample=head(user, 50)
write.xlsx(biz_sample, 'biz_file.xlsx')




# yelp_academic_dataset_business.json
# yelp_academic_dataset_checkin.json
# yelp_academic_dataset_photo.json
# yelp_academic_dataset_review.json
# yelp_academic_dataset_tip.json
# yelp_academic_dataset_user.json



json_file <- lapply(data, function(x) {
  x[sapply(x, is.null)] <- NA
  unlist(x)
})
names(data)

names <- unlist(lapply(df$nodes, function(x){x$name}))
groups <- unlist(lapply(df$nodes, function(x){x$group}))



df=do.call("rbind", json_file)

head(df)

dat <- lapply(data, function(j) {
  as.data.frame(replace(j, sapply(j, is.list), NA))
})
res <- rbind.fill(dat)



res=fromJSON(data) %>% as.data.frame
data = fromJSON('yelp_academic_dataset_user.json', nullValue = NA)


# yelp_academic_dataset_business.json
# yelp_academic_dataset_checkin.json
# yelp_academic_dataset_photo.json
# yelp_academic_dataset_review.json
# yelp_academic_dataset_tip.json
# yelp_academic_dataset_user.json

data <- jsonlite::fromJSON("yelp_academic_dataset_business.json")
lapply(data, function(d) as_data_frame(d)) %>% 
  bind_rows() %>% 
  gather(groups, val, -timestamp, -key) %>% 
  select(key, group, timestamp)

