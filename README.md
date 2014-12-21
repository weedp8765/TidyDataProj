##Creating a tidy data set from UCI wearable computing data
============
This README details the steps and decisions taken to arrive at the tidy data set "Output_TidyData.txt"

###General Comments
The script relies primarily on the plyr and dplyr packages to filter and refine the data set. The script assumes that these packages will be installed and loaded in advance - it does not attempt to detect otherwise.

Note that the final tidy data set is presented in wide form, with the interpretation that the X, Y and Z axes and each measurement/calculation should be represented in distinct variables.

###Step 1: Downloading the raw data
The script will verify whether or not the data has been downloaded, and if not, it will pull the zip file from the UCI source web site into the current working directory. Similarly, if the unzipped directory does not yet exist, it will extract the zipped folders into the working directory.

###Step 2: Sourcing relevant raw data
The following relevant raw data is sourced into independent data frames:
* Subject Data (1 numeric column indicating the ID of the subject being monitored)
* X Data (561 numeric value columns covering various metrics calculated from the raw UCI data)
* Y Data (1 numeric column indicating a code for the type of activity being monitored, e.g. Walking, Standing, etc.)
* Features (2 columns, with 2nd column indicating headers for X data)
* Activities (2 columns, the 1st numeric ID code aligning with values in Y Data, the 2nd an activity description)

Note that X, Y and Subject data were split (per UCI readme, at random) between "train" and "test" data sets, therefore there are 2 source files that must be loaded for each.

Also note that the granular source data embedded in the "Inertial Signals" folders is excluded from this script, as it is assumed to be out of scope for this exercise. (See discussion at https://class.coursera.org/getdata-016/forum/thread?thread_id=50 for further information)

###Step 3: Combine together data sets
This step combines together the disparate data frames and applies column names. Note that there are discrepant/duplicated names within the features source data, and therefore explicit functions are applied to ensure the names are both valid and unique. 

The result of this step is one large data frame, including all variables from the source files in scope (i.e., all X data), the activity codes, and the subject IDs

###Step 4: Join descriptive activity names
This step uses the join() functionality to add the descriptive activity names to our large "master" data frame.

###Step 5: Filter for a select set of columns
This step uses the dplyr select() funciton to return a data frame that includes the subjectID, activity (the descriptive values joined in step 4), as well as any variable reflecting "mean" or "std" calculated data, per the assignment instructions.

Note that that "mean" and "std" were interpreted literally, and therefore certain variables were deemed OUT OF SCOPE:
* Variables reflecting a meanFreq() calculation, as this reflects a weighted average of frequency components 
* angle() variables for which certain mean values were an input, as these reflect the angle() computation, and not the mean()
Some details on these are available in the features_info.txt UCI documentation.

###Step 6: Clean up names to better reflect tidy format
Simply put, this step replaces "." and ".." with "\_" characters, and expands the "f" and "t" prefix to a more descriptive "freq\_" and "time\_", to better reflect information detailed in the UCI documentation

###Step 7: Summarize by subject and activity
Again, the dplyr package is employed to summarize the data in a tidy format, taking the mean across all variables, grouping by distinct combinations of subjectID and Activity. This tidy data frame contains 180 observations of 68 variables.

###Step 8: Output results
The tidy data set is output to an Output_TidyData.txt file in the working directory.
