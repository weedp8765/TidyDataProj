UCI Wearable Computing Code Book
================================
##Data source description
Source: UCI Human Activity Recognition Using Smartphones Dataset

Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Source link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The tidy data reflects summarized mean statistics from select variables computed from data gathered from Samsung wearable devices for a UCI experiment. The summarized mean statistics are measured across each subject and activity category (described below).

Additional information on the source data and computed variables is available in the README.txt and features\_info.txt files in the UCI zipped archive.

##Data transformations
Variable transformations:
* The activity variable was transformed from a code in the source data (numeric, 1-6) to its respective description (character string)
* Computed variables (i.e., all variables except for subjectID and activity) were excluded UNLESS they represented a "mean" or "std" calculation

Variable name transformations:
* Names were generally modified to remove special characters (e.g., "()-")
* ".." and "." character combinations were replaced with the "\_" character
* The prefixes "f" and "t" were expanded to more descriptive prefixes "freq\_" and "time\_"

##Variables
* 1	subjectID : integer
	Values 1 - 30, representing an individual participant (i.e., subject) in the UCI study
	
* 2	activity : factor (6 levels)
	1 - WALKING
	
	2 - WALKING\_UPSTAIRS
	
	3 - WALKING\_DOWNSTAIRS
	
	4 - SITTING
	
	5 - STANDING
	
	6 - LAYING
	
	Represents state of subject for a particular set of observed variables.

* 3-68	All other variables (66 in total) : numeric value from -1 to 1
	Represent normalized calculations based on observed measurements. Certain details on the underlying calculations are available in the UCI documentation (README.txt and features\_info.txt). 
	
	Variable names:
	* 3	time\_BodyAcc\_mean\_X
	* 4	time\_BodyAcc\_mean\_Y
	* 5	time\_BodyAcc\_mean\_Z
	* 6	time\_GravityAcc\_mean\_X
	* 7	time\_GravityAcc\_mean\_Y
	* 8	time\_GravityAcc\_mean\_Z
	* 9	time\_BodyAccJerk\_mean\_X
	* 10	time\_BodyAccJerk\_mean\_Y
	* 11	time\_BodyAccJerk\_mean\_Z
	* 12	time\_BodyGyro\_mean\_X
	* 13	time\_BodyGyro\_mean\_Y
	* 14	time\_BodyGyro\_mean\_Z
	* 15	time\_BodyGyroJerk\_mean\_X
	* 16	time\_BodyGyroJerk\_mean\_Y
	* 17	time\_BodyGyroJerk\_mean\_Z
	* 18	time\_BodyAccMag\_mean
	* 19	time\_GravityAccMag\_mean
	* 20	time\_BodyAccJerkMag\_mean
	* 21	time\_BodyGyroMag\_mean
	* 22	time\_BodyGyroJerkMag\_mean
	* 23	freq\_BodyAcc\_mean\_X
	* 24	freq\_BodyAcc\_mean\_Y
	* 25	freq\_BodyAcc\_mean\_Z
	* 26	freq\_BodyAccJerk\_mean\_X
	* 27	freq\_BodyAccJerk\_mean\_Y
	* 28	freq\_BodyAccJerk\_mean\_Z
	* 29	freq\_BodyGyro\_mean\_X
	* 30	freq\_BodyGyro\_mean\_Y
	* 31	freq\_BodyGyro\_mean\_Z
	* 32	freq\_BodyAccMag\_mean
	* 33	freq\_BodyBodyAccJerkMag\_mean
	* 34	freq\_BodyBodyGyroMag\_mean
	* 35	freq\_BodyBodyGyroJerkMag\_mean
	* 36	time\_BodyAcc\_std\_X
	* 37	time\_BodyAcc\_std\_Y
	* 38	time\_BodyAcc\_std\_Z
	* 39	time\_GravityAcc\_std\_X
	* 40	time\_GravityAcc\_std\_Y
	* 41	time\_GravityAcc\_std\_Z
	* 42	time\_BodyAccJerk\_std\_X
	* 43	time\_BodyAccJerk\_std\_Y
	* 44	time\_BodyAccJerk\_std\_Z
	* 45	time\_BodyGyro\_std\_X
	* 46	time\_BodyGyro\_std\_Y
	* 47	time\_BodyGyro\_std\_Z
	* 48	time\_BodyGyroJerk\_std\_X
	* 49	time\_BodyGyroJerk\_std\_Y
	* 50	time\_BodyGyroJerk\_std\_Z
	* 51	time\_BodyAccMag\_std
	* 52	time\_GravityAccMag\_std
	* 53	time\_BodyAccJerkMag\_std
	* 54	time\_BodyGyroMag\_std
	* 55	time\_BodyGyroJerkMag\_std
	* 56	freq\_BodyAcc\_std\_X
	* 57	freq\_BodyAcc\_std\_Y
	* 58	freq\_BodyAcc\_std\_Z
	* 59	freq\_BodyAccJerk\_std\_X
	* 60	freq\_BodyAccJerk\_std\_Y
	* 61	freq\_BodyAccJerk\_std\_Z
	* 62	freq\_BodyGyro\_std\_X
	* 63	freq\_BodyGyro\_std\_Y
	* 64	freq\_BodyGyro\_std\_Z
	* 65	freq\_BodyAccMag\_std
	* 66	freq\_BodyBodyAccJerkMag\_std
	* 67	freq\_BodyBodyGyroMag\_std
	* 68	freq\_BodyBodyGyroJerkMag\_std

