setwd('/Users/rorr/PythonStuff/Assignments/Charlotte_BizPredictions/Rorr/yelp_dataset/')
library(dplyr)
#library(jsonlite)
#library(RJSONIO)
library(rjson)
#library(plyr)
# 
# checkin_file <- ('yelp_academic_dataset_checkin.json')
# checkin_data<-jsonlite::stream_in(textConnection(readLines(checkin_file, n=10000)),verbose=T)
# checkin=head(checkin_data, 50)
# write.csv(checkin, 'checkin.csv')
# write(checkin, "checkin.json")
# 
# tip_file <- ('yelp_academic_dataset_tip.json')
# tip_data<-jsonlite::stream_in(textConnection(readLines(tip_file, n=10000)),verbose=T)
# tip=head(tip_data, 50)
# write.csv(tip, 'tip.csv')
# write(tip, "tip.json")
# 
# user_file <- "yelp_academic_dataset_user.json"
# user_data<-jsonlite::stream_in(textConnection(readLines(user_file, n=10000)),verbose=T)
# user=head(user_data, 50)
# write.csv(user, 'user.csv')
# write(user, "user.json")
# 
# 
# biz_file <- ('yelp_academic_dataset_business.json')
# bizdata <- fromJSON(sprintf("[%s]", paste(readLines(biz_file),collapse=",")))
# biz_data<-jsonlite::stream_in(textConnection(readLines(biz_file, n=10000)),verbose=F)
# biz=head(biz_data, 50)
# write.csv(biz, 'biz_file.csv')
# write(bizdata, "biz.json")


print_json_lines <- function(json, lines) {
  # break up into lines
  json_lines <- strsplit(json, "\n")[[1]]
  # get desired lines
  json_lines <- json_lines[lines]
  # print
  cat(paste(json_lines, collapse = "\n"))
  # return invisily
  invisible(json_lines)
}

business=print_json_lines(jsonlite::toJSON(biz_data, pretty = TRUE), 1:500)
write(business, "biz.json")


# yelp_academic_dataset_business.json
# yelp_academic_dataset_checkin.json
# yelp_academic_dataset_photo.json
# yelp_academic_dataset_review.json
# yelp_academic_dataset_tip.json
# yelp_academic_dataset_user.json



review_file <- ('yelp_academic_dataset_review.json')
review_data<-jsonlite::stream_in(textConnection(readLines(review_file, n=100000)),verbose=T)
review=head(review_data, 50)
write.csv(review, 'review.csv')
write(review, "review.json")


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

