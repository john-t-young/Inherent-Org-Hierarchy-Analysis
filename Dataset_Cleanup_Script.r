#install appropriate libraries
install.packages("dplyr")
install.packages("ggplot2")

#load appropriate libraries
library(dplyr)

#set working directory to data set location, change "C:/filename" to actual directory path
#setwd("C:/...")

#read csv file
mydata = read.csv("john_clean.csv", header = TRUE, sep = ",", na.strings = "", quote = "", dec = ".", nrows = 865000, fill = TRUE, strip.white = TRUE)

#data structure check, column names and max row count
column_names <- colnames(mydata)
column_names
row_count <- nrow(mydata)
row_count

#missing data values check for ALL columns
nan_count <- colSums(is.na(mydata))
nan_count <- data.frame(nan_count)
nan_count

#NA string in data cell check for ALL columns
NA_string_count <- sapply(mydata, function(y) sum(length(which(y=="NA"))))
NA_string_count <- data.frame(NA_string_count)
NA_string_count

#Unique User Event Count and Summary -- Highest Order Grouping 
user_organizer_event<- group_by(mydata,Mailbox,Organizer)
user_organizer_event_counts <- tally(user_organizer_event)
user_organizer_event_counts
summary(user_organizer_event_counts)