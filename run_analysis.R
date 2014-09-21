library(dplyr)
library(tidyr)

## 0. Read the data sets
activity<-read.table("./activity_labels.txt")
feature<-read.table("./features.txt")
test_label <- read.table("./test/y_test.txt")
test_set <- read.table("./test/X_test.txt")
test_subject <- read.table("./test/subject_test.txt")
train_label <- read.table("./train/y_train.txt")
train_set <- read.table("./train/X_train.txt")
train_subject <- read.table("./train/subject_train.txt")

## 1. Merges the training and the test sets to create one data set.
label <-rbind(test_label, train_label)
colnames(label) <- "activity_label"
colnames(activity) <- c("activity_label", "activity_name")
set <-rbind(test_set, train_set)
colnames(set) <- as.character(feature[[2]])
subject <- rbind(test_subject, train_subject)
colnames(subject) <- "subject"
master_data <- cbind(set, subject, label)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
data <- select(master_data, contains("mean\\()"), contains("std\\()"), subject, activity_label)

## 3. Uses descriptive activity names to name the activities in the data set
data <- inner_join(data, activity, by="activity_label")
data <- select(data, -activity_label)

## 4. Appropriately labels the data set with descriptive variable names
colnames(data) <- gsub("-", " ", colnames(data))
colnames(data) <- gsub("mean\\()", "mean", colnames(data))
colnames(data) <- gsub("std\\()", "standard deviation", colnames(data))
colnames(data) <- sub("tBody", "time domain body ", colnames(data))
colnames(data) <- sub("fBody", "frequency domain body ", colnames(data))
colnames(data) <- sub("tGravity", "time domain gravity ", colnames(data))
colnames(data) <- sub("fGravity", "frequency domain gravity ", colnames(data))
colnames(data) <- sub("BodyAccJerkMag ", "body accelerometer jerk magnitude ", colnames(data))
colnames(data) <- sub("BodyGyroJerkMag ", "body gyroscope jerk magnitude ", colnames(data))
colnames(data) <- sub("BodyGyroMag ", "body gyroscope magnitude ", colnames(data))
colnames(data) <- sub("AccMag ", "accelerometer magnitude ", colnames(data))
colnames(data) <- sub("AccJerk ", "accelerometer jerk ", colnames(data))
colnames(data) <- sub("AccJerkMag ", "accelerometer jerk magnitude ", colnames(data))
colnames(data) <- sub("GyroMag ", "gyroscope magnitude ", colnames(data))
colnames(data) <- sub("GyroJerk ", "gyroscope jerk ", colnames(data))
colnames(data) <- sub("GyroJerkMag ", "gyroscope jerk magnitude ", colnames(data))
colnames(data) <- sub("Acc ", "accelerometer ", colnames(data))
colnames(data) <- sub("Gyro ", "gyroscope ", colnames(data))

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_data <- gather(data, measure, measurement, -subject, -activity_name)
tidy_data_summary <- summarize(group_by(tidy_data, subject, activity_name, measure), average_value = mean(measurement))
write.table(tidy_data_summary, "tidy_data_summary.csv", row.names=FALSE)

##5.1. Create a "wide" form of tidy data as an alternative to the "long" form
tidy_data_summary_wide <- spread(tidy_data_summary, measure, average_value)
write.table(tidy_data_summary_wide, "tidy_data_summary_wide.txt", row.names=FALSE)
