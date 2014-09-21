### Code Book for Course Project of the Getting and Cleaning Data Course

The tidy_data_summary.txt file and tidy_data_summary_wide.txt file are based on the data downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The raw data came from an experience while 30 research participants performed 6 pre-defined activities wearing a smartphone on the waist. The original data set were divided into 2 sets - the training set and the test set. This analysis combined the 2 sets into 1. 

The original set has 561 variables. This analysis only focused those measuring mean and standard deviation and reduced the number of variables to 66. The variable names have also been cleaned up to make more easier to read and understand. Please see the table below for details.

This analysis summarized the values of each variable by its average (i.e. mean) per participant per activity. For privacy reson, each participant is assigned with an ID under the column "subject". The activity is represented by its name under the column "activity_name". 

The summarized data is organized in 2 forms - the long form and the wide form. The "tidy_data_summary.txt" file is the long form and it has only 4 columns - subject, activity_name, measure, and average_value. Each variable is listed as a separate record under the "measure" column. The "tidy_data_summary_wide.txt" file is the wide form and it has 68 columns. Each variable is listed as a column, following the subject and activity_name columns. 

Original Name |Updated Name
------------- |--------------
tBodyAcc-mean()-X |time domain body accelerometer mean X
tBodyAcc-mean()-Y |time domain body accelerometer mean Y
tBodyAcc-mean()-Z	|time domain body accelerometer mean Z
tGravityAcc-mean()-X |time domain gravity accelerometer mean X
tGravityAcc-mean()-Y |time domain gravity accelerometer mean Y
tGravityAcc-mean()-Z |time domain gravity accelerometer mean Z
tBodyAccJerk-mean()-X	|time domain body accelerometer jerk mean X
tBodyAccJerk-mean()-Y	|time domain body accelerometer jerk mean Y
tBodyAccJerk-mean()-Z	|time domain body accelerometer jerk mean Z
tBodyGyro-mean()-X	|time domain body gyroscope mean X
tBodyGyro-mean()-Y	|time domain body gyroscope mean Y
tBodyGyro-mean()-Z	|time domain body gyroscope mean Z
tBodyGyroJerk-mean()-X	|time domain body gyroscope jerk mean X
tBodyGyroJerk-mean()-Y	|time domain body gyroscope jerk mean Y
tBodyGyroJerk-mean()-Z	|time domain body gyroscope jerk mean Z
tBodyAccMag-mean()	|time domain body accelerometer magnitude mean
tGravityAccMag-mean()	|time domain gravity accelerometer magnitude mean
tBodyAccJerkMag-mean()	|time domain body accelerometer jerk magnitude mean
tBodyGyroMag-mean()	|time domain body gyroscope magnitude mean
tBodyGyroJerkMag-mean()	|time domain body gyroscope jerk magnitude mean
fBodyAcc-mean()-X	|frequency domain body accelerometer mean X
fBodyAcc-mean()-Y	|frequency domain body accelerometer mean Y
fBodyAcc-mean()-Z	|frequency domain body accelerometer mean Z
fBodyAccJerk-mean()-X	|frequency domain body accelerometer jerk mean X
fBodyAccJerk-mean()-Y	|frequency domain body accelerometer jerk mean Y
fBodyAccJerk-mean()-Z	|frequency domain body accelerometer jerk mean Z
fBodyGyro-mean()-X	|frequency domain body gyroscope mean X
fBodyGyro-mean()-Y	|frequency domain body gyroscope mean Y
fBodyGyro-mean()-Z	|frequency domain body gyroscope mean Z
fBodyAccMag-mean()	|frequency domain body accelerometer magnitude mean
fBodyBodyAccJerkMag-mean()	|frequency domain body body accelerometer jerk magnitude mean
fBodyBodyGyroMag-mean()	|frequency domain body body gyroscope magnitude mean
fBodyBodyGyroJerkMag-mean()	|frequency domain body body gyroscope jerk magnitude mean
tBodyAcc-std()-X	|time domain body accelerometer standard deviation X
tBodyAcc-std()-Y	|time domain body accelerometer standard deviation Y
tBodyAcc-std()-Z	|time domain body accelerometer standard deviation Z
tGravityAcc-std()-X	|time domain gravity accelerometer standard deviation X
tGravityAcc-std()-Y	|time domain gravity accelerometer standard deviation Y
tGravityAcc-std()-Z	|time domain gravity accelerometer standard deviation Z
tBodyAccJerk-std()-X	|time domain body accelerometer jerk standard deviation X
tBodyAccJerk-std()-Y	|time domain body accelerometer jerk standard deviation Y
tBodyAccJerk-std()-Z	|time domain body accelerometer jerk standard deviation Z
tBodyGyro-std()-X	|time domain body gyroscope standard deviation X
tBodyGyro-std()-Y	|time domain body gyroscope standard deviation Y
tBodyGyro-std()-Z	|time domain body gyroscope standard deviation Z
tBodyGyroJerk-std()-X	|time domain body gyroscope jerk standard deviation X
tBodyGyroJerk-std()-Y	|time domain body gyroscope jerk standard deviation Y
tBodyGyroJerk-std()-Z	|time domain body gyroscope jerk standard deviation Z
tBodyAccMag-std()	|time domain body accelerometer magnitude standard deviation
tGravityAccMag-std()	|time domain gravity accelerometer magnitude standard deviation
tBodyAccJerkMag-std()	|time domain body accelerometer jerk magnitude standard deviation
tBodyGyroMag-std()	|time domain body gyroscope magnitude standard deviation
tBodyGyroJerkMag-std()	|time domain body gyroscope jerk magnitude standard deviation
fBodyAcc-std()-X	|frequency domain body accelerometer standard deviation X
fBodyAcc-std()-Y	|frequency domain body accelerometer standard deviation Y
fBodyAcc-std()-Z	|frequency domain body accelerometer standard deviation Z
fBodyAccJerk-std()-X	|frequency domain body accelerometer jerk standard deviation X
fBodyAccJerk-std()-Y	|frequency domain body accelerometer jerk standard deviation Y
fBodyAccJerk-std()-Z	|frequency domain body accelerometer jerk standard deviation Z
fBodyGyro-std()-X	|frequency domain body gyroscope standard deviation X
fBodyGyro-std()-Y	|frequency domain body gyroscope standard deviation Y
fBodyGyro-std()-Z	|frequency domain body gyroscope standard deviation Z
fBodyAccMag-std()	|frequency domain body accelerometer magnitude standard deviation
fBodyBodyAccJerkMag-std()	|frequency domain body body accelerometer jerk magnitude standard deviation
fBodyBodyGyroMag-std()	|frequency domain body body gyroscope magnitude standard deviation
fBodyBodyGyroJerkMag-std()	|frequency domain body body gyroscope jerk magnitude standard deviation



