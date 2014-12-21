## Getting & Cleaning Data - Class Project: Tidy data UCI dataset

## Note: script utilizes dplyr and plyr packages 
##    Please ensure they are installed and loaded beforehand!

## Step 1: Download file and unzip in working directory
if(!file.exists("./UCI HAR Dataset.zip"))
{
      fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      download.file(fileUrl,destfile = "./UCI HAR Dataset.zip")
      
      if(!file.exists("./UCI HAR Dataset")) {unzip("./UCI HAR Dataset.zip")}
}

## Step 2: source relevant data / headers to be combined and tidied
test_subjdf <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt")
test_xdf <- read.table(file = "./UCI HAR Dataset/test/X_test.txt")
test_ydf <- read.table(file = "./UCI HAR Dataset/test/y_test.txt")
train_subjdf <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt")
train_xdf <- read.table(file = "./UCI HAR Dataset/train/X_train.txt")
train_ydf <- read.table(file = "./UCI HAR Dataset/train/y_train.txt")
features <- read.table(file = "./UCI HAR Dataset/features.txt")
activities <- read.table(file = "./UCI HAR Dataset/activity_labels.txt")


## Step 3: combine observations across train & test sets & add variable names
xdf <- rbind(train_xdf, test_xdf)
names(xdf) <- make.unique(make.names(features[,2]))

ydf <- rbind(train_ydf, test_ydf)
names(ydf) <- c("activityID")

subjdf <- rbind(train_subjdf, test_subjdf)
names(subjdf) <- c("subjectID")

df <- cbind(xdf,ydf,subjdf)


##Step 4: join in activity names
names(activities) <- c("activityID", "activity")
df <- join(df,activities,by = "activityID")


## Step 5: Use dplyr to filter out relevent names
trimmed_df <- df %>%
      select(subjectID, activity, contains(".mean."), contains(".std."))
      

## Step 6: clean up names, and clarify "f" and "t" prefix (frequency & time)
names(trimmed_df) <- gsub("\\.\\.", "", names(trimmed_df))
names(trimmed_df) <- gsub("\\.", "_", names(trimmed_df))

names(trimmed_df) <- paste(sub("f","freq_",substr(names(trimmed_df),1,1)),
                           substr(names(trimmed_df),2,nchar(names(trimmed_df))),
                           sep="")

names(trimmed_df) <- paste(sub("t","time_",substr(names(trimmed_df),1,1)),
      substr(names(trimmed_df),2,nchar(names(trimmed_df))),
      sep="")


## Step 7: group by subject and activity and output means across all variables
summary_df <- trimmed_df %>%
      group_by(subjectID, activity) %>%
      summarise_each(funs(mean))
      

# Step 8: write tidy data to file
write.table(summary_df, "./Output_TidyData.txt", row.names = FALSE)