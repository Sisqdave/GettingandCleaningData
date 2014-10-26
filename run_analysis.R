

## Installs the packages that we will need
library(dplyr)
library(tidyr)
library(reshape2)
## These lines read the data from the working directory. The files below must be in the working directory.
subjecttest <- read.table("subject_test.txt")
subjecttrain <- read.table("subject_train.txt")
activitylabels <- read.table("activity_labels.txt")
xtest <- read.table("X_test.txt")
xtrain <- read.table("X_train.txt")
ytest <- read.table("y_test.txt")
ytrain <- read.table("y_train.txt")
features <- read.table("features.txt")

## This tidies up our variables(column names)
features$V2 <- tolower(features$V2)
features$V2 <- gsub("-", "", features$V2)
features$V2 <- gsub("\\(", "", features$V2)
features$V2 <- gsub("\\)", "", features$V2)
features$V2 <- gsub(",", "", features$V2)
features$V2 <- gsub("std", "standarddeviation", features$V2)
features$V2 <- gsub("acc", "accelerometer", features$V2)
features$V2 <- gsub("gyro", "gyroscope", features$V2)
features$V2 <- gsub("tbody", "timedomainsignalbody", features$V2)
features$V2 <- gsub("fbody", "fastfouriertransform", features$V2)
features$V2 <- gsub("tgravity", "timedomainsignalgravity", features$V2)

##binds columns together
## This combines the test data with the training data
datacombine <- rbind(xtest, xtrain)
## This combines the test subjects with the training subjects
subject <- rbind(subjecttest, subjecttrain)
##This combines the testing activity code with the training activity code
activity <-  rbind(ytest, ytrain)

## removes duplicate column names that do not have mean or standard deviation measurements
datacombine <- datacombine[, unique(colnames(datacombine))]

## Adds the variables to the column names
labels <- as.factor(features[[2]])

colnames(datacombine) <- labels
colnames(subject) <- "subject"                           
colnames(activity)[1] <- "codes"
colnames(activitylabels) <- c("codes", "activity")

##Combines the activity codes and the subject codes to the data.frame
dataactivity <- cbind(activity = activity, datacombine)
rm("datacombine") # cleans up old data
datasubject <- cbind(subject = subject, dataactivity)
rm("dataactivity") # cleans up old data
## Changes our activity codes to named activities
data <- merge(activitylabels, datasubject,  by = "codes")
rm("datasubject") ##cleans up old data

## Selects only the Data containg mean and standard deviation data
datafin <- select(data, contains("subject"), contains("activity"), contains("mean"), contains("std"))
rm("data") ##cleans up old data
## Reshapes the data
datamelt <- melt(datafin, id=c("subject", "activity"))
tidydata <- dcast(datamelt, subject + variable ~ activity, mean)

## Writes the tidy data to the step5.txt file
write.table(tidydata, file = "step5.txt", row.name=FALSE )

