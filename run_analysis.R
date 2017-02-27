## ------------------------------------------------------------------------

library(data.table)

library(plyr)


## ------------------------------------------------------------------------
current_directory <- getwd()
subdirectory_data <- "Dataset.zip"
directory_data <- file.path(current_directory, subdirectory_data)


url <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, directory_data)



## ------------------------------------------------------------------------

unzip(directory_data)
folder_name <- ""


## ------------------------------------------------------------------------
X_training <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_training <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_training <- read.table("UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")


## ------------------------------------------------------------------------

X <- rbind(X_training, X_test)
Y <- rbind(Y_training,Y_test)
subject <- rbind(subject_training, subject_test)


## ------------------------------------------------------------------------

features <- read.table("UCI HAR Dataset/features.txt")
features_names <- features[,2]
corresponding_indices <- grep("-(mean|std)\\(\\)",features_names)
X <- X[,corresponding_indices]


## ------------------------------------------------------------------------

names(X) <- features_names[corresponding_indices]
names(Y) <- "activity"
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities_names <- activities[,2]
labels <- Y[,1]
Y[,1] <- activities_names[labels] 
names(subject) <- "subject"


## ------------------------------------------------------------------------

column_means <- function(mat){
  col_means <- colMeans(mat[,2:67])
  return (col_means)
} 

data <- cbind(subject, X, Y)
average_activity_subject <- ddply(data,.(subject, activity),column_means)


## ------------------------------------------------------------------------
write.table(x = average_activity_subject, file = "tidy_set.txt", row.name = F)


