# Review Natural Language Processing

setwd('/Users/rorr/PythonStuff/Assignments/Charlotte_BizPredictions/Rorr/yelp_dataset/')
library(dplyr)
#library(jsonlite)
#library(RJSONIO)
library(rjson)
#library(plyr)
review_file <- ('yelp_academic_dataset_review.json')
review_data<-jsonlite::stream_in(textConnection(readLines(review_file, n=10000000)),verbose=T)

json_file <- lapply(data, function(x) {
  x[sapply(x, is.null)] <- NA
  unlist(x)
})
names(data)

names <- unlist(lapply(df$nodes, function(x){x$name}))
groups <- unlist(lapply(df$nodes, function(x){x$group}))


review=head(review_data, 50)
write.csv(review, 'review.csv')
write(review, "review.json")
