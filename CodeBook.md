# DS3-PA Codebook

### Overview
The raw data contains measurements from the accelerometer and gyroscope of the subjects’ phones while performing designated activities.  The measurements, subject id’s, activities are distributed in different files. The measurements are further divided into two sets representing training and test data respectively.  The objective of the project to to consolidate the data into one tidy data set that includes only the mean and standard deviation of the measurements. 

### Raw Data:
The raw data for the project can be obtained here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

If you plan on running the run_analysis.R script to recreate the tidy data file, you should extract into a directory “UCI-HAR” in your working directory so that you run the script.

Detailed descriptions of the files and measurements are located in the readme.txt file that is contained in the .zip archive. A full description of the data is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Codebook
Subjects identified for each measurement were read in as integers

Activities were transformed from integers into factors: (activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

To determine columns that represented mean and standard deviation values, only columns with feature names that contained "mean()" or "std()" were read in. All measurements read in as numeric values.  The same feature names were used as the variable names in the tidy file with the following modifications:
<UL>
<LI>Remove parenthesis and hyphens
<LI>Convert to all lower case
<LI>Correct descriptions where "body" was duplicated by removing one "body"
</UL>

Test and Training data sets were processed identically and merged into one data set. A factor was added to indicate the data set that the observation came from (dataset: test, training)

Measurements for each (subject, activity) pair were grouped on which the means were calculated.




