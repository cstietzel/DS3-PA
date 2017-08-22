
Overview:
The raw data contains measurements from the accelerometer and gyroscope of the subjects’ phones while performing designated activities.  The measurements, subject id’s, actives are distributed in different files. The measurements were further dived into two sets representing trains and test data respectively.  This objective of the project to to consolidate the data into one tidy data set that includes only the mean and standard deviation of the measurements. 

Raw Data:
The raw data for the project can be obtained here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

If you plan on running the run_analysis.R script to recreate the tidy data file, you should extract into a directory “UCI-HAR” that is located in the above your working directory that you run the script. (i.e. getwd()/../UCI-HAR)

Detailed descriptions of the files and measurements are located in the readme.txt file that is contained in the .zip archive. A full description of the data is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Codebook:
Subjects that were identified for each measurement we read in as integers

Activities were transformed from integers into factors: (activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

To determine columns that represented mean and standard deviation values, only columns with feature names that contained "mean()" or "std()" were read in. These same feature names were used as the variable names in the tdiy file with the foloowing modifications:
1. Remove parends and hyphens
2. Convert to all lower case
3. Correct descriptions where "body" was duplicated by removeing one "body"
All measurements read in as numeric values

Test and Training data sets were processed identically and merged into one datat set. A factor was added to indicate the data set that the observation came from (dateset: test, training)




