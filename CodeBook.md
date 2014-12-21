UCI Wearable Computing Code Book
================================
##Data source description
Source: UCI Human Activity Recognition Using Smartphones Dataset
Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Source link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The tidy data reflects summarized mean statistics from select variables computed from data gathered from Samsung wearable devices for a UCI experiment. The summarized mean statistics are measured across each subject and activity category (described below).

Additional information on the source data and computed variables is available in the README.txt and features_info.txt files in the UCI zipped archive.

##Data transformations
Variable transformations:
* The activity variable was transformed from a code in the source data (numeric, 1-6) to its respective description (character string)
* Computed variables (i.e., all variables except for subjectID and activity) were excluded UNLESS they represented a "mean" or "std" calculation

Variable name transformations:
* Names were generally modified to remove special characters (e.g., "()-")
* ".." and "." character combinations were replaced with the "\_" character
* The prefixes "f" and "t" were expanded to more descriptive prefixes "freq\_" and "time\_"

##Variables
* subjectID : integer
	Values 1 - 30, representing an individual participant (i.e., subject) in the UCI study
	
* activity : factor (6 levels)
	1 - WALKING
	2 - WALKING_UPSTAIRS
	3 - WALKING_DOWNSTAIRS
	4 - SITTING
	5 - STANDING
	6 - LAYING
	
	Represents state of subject for a particular set of observed variables.

* All other variables (66 in total) : numeric value from -1 to 1
	Represent normalized calculations based on observed measurements. Certain details on the underlying calculations are available in the UCI documentation (README.txt and features_info.txt). 
	
	Variable names:
	3	time_BodyAcc_mean_X
	4	time_BodyAcc_mean_Y
	5	time_BodyAcc_mean_Z
	6	time_GravityAcc_mean_X
	7	time_GravityAcc_mean_Y
	8	time_GravityAcc_mean_Z
	9	time_BodyAccJerk_mean_X
	10	time_BodyAccJerk_mean_Y
	11	time_BodyAccJerk_mean_Z
	12	time_BodyGyro_mean_X
	13	time_BodyGyro_mean_Y
	14	time_BodyGyro_mean_Z
	15	time_BodyGyroJerk_mean_X
	16	time_BodyGyroJerk_mean_Y
	17	time_BodyGyroJerk_mean_Z
	18	time_BodyAccMag_mean
	19	time_GravityAccMag_mean
	20	time_BodyAccJerkMag_mean
	21	time_BodyGyroMag_mean
	22	time_BodyGyroJerkMag_mean
	23	freq_BodyAcc_mean_X
	24	freq_BodyAcc_mean_Y
	25	freq_BodyAcc_mean_Z
	26	freq_BodyAccJerk_mean_X
	27	freq_BodyAccJerk_mean_Y
	28	freq_BodyAccJerk_mean_Z
	29	freq_BodyGyro_mean_X
	30	freq_BodyGyro_mean_Y
	31	freq_BodyGyro_mean_Z
	32	freq_BodyAccMag_mean
	33	freq_BodyBodyAccJerkMag_mean
	34	freq_BodyBodyGyroMag_mean
	35	freq_BodyBodyGyroJerkMag_mean
	36	time_BodyAcc_std_X
	37	time_BodyAcc_std_Y
	38	time_BodyAcc_std_Z
	39	time_GravityAcc_std_X
	40	time_GravityAcc_std_Y
	41	time_GravityAcc_std_Z
	42	time_BodyAccJerk_std_X
	43	time_BodyAccJerk_std_Y
	44	time_BodyAccJerk_std_Z
	45	time_BodyGyro_std_X
	46	time_BodyGyro_std_Y
	47	time_BodyGyro_std_Z
	48	time_BodyGyroJerk_std_X
	49	time_BodyGyroJerk_std_Y
	50	time_BodyGyroJerk_std_Z
	51	time_BodyAccMag_std
	52	time_GravityAccMag_std
	53	time_BodyAccJerkMag_std
	54	time_BodyGyroMag_std
	55	time_BodyGyroJerkMag_std
	56	freq_BodyAcc_std_X
	57	freq_BodyAcc_std_Y
	58	freq_BodyAcc_std_Z
	59	freq_BodyAccJerk_std_X
	60	freq_BodyAccJerk_std_Y
	61	freq_BodyAccJerk_std_Z
	62	freq_BodyGyro_std_X
	63	freq_BodyGyro_std_Y
	64	freq_BodyGyro_std_Z
	65	freq_BodyAccMag_std
	66	freq_BodyBodyAccJerkMag_std
	67	freq_BodyBodyGyroMag_std
	68	freq_BodyBodyGyroJerkMag_std

