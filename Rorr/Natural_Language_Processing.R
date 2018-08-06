# Review Natural Language Processing

setwd('/Users/rorr/PythonStuff/Assignments/Charlotte_BizPredictions/Rorr/yelp_dataset/raw/')
library(dplyr)
#library(jsonlite)
library(RJSONIO)
#library(rjson)
#library(plyr)
review_file <- ('yelp_academic_dataset_review.json')
# 
#  c <- file(review_file, "r")
#  l <- readLines(c, -1L)
# json <- lapply(X=l, fromJSON)
# 
#data = fromJSON('yelp_academic_dataset_review.json', simplifyVector = FALSE)
df<-jsonlite::stream_in(textConnection(readLines(review_file, n=6000000)),verbose=T)

df1=review_data
colnames(df)

data = df %>%
  select(business_id,text) %>%
  split(.$business_id)

split_url_vector = split(url_vector, ceiling(seq_along(url_vector)/5000))
split_1=split_url_vector[[1]]
split_2=split_url_vector[[2]]
split_3=split_url_vector[[3]]
split_4=split_url_vector[[4]]
split_5=split_url_vector[[5]]
split_6=split_url_vector[[6]]
split_7=split_url_vector[[7]]
split_8=split_url_vector[[8]]
split_9=split_url_vector[[9]]
split_10=split_url_vector[[10]]
split_11=split_url_vector[[11]]
split_12=split_url_vector[[12]]
split_13=split_url_vector[[13]]
split_14=split_url_vector[[14]]
split_15=split_url_vector[[15]]
