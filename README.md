# DS3-PA
Programming Assignment for Coursera - Data Science 3 

### Contents
This repository contains files and scripts for the Programming Assignment for the Coursera Getting and Cleaning Data class.

### Overview
Creating applications for active consumers is creating surge wearable computing algorithms.  Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. To facilities this, the project will enhance reformat the raw data set into a tidy format specified by the Coursera Data Science Instructors.  The raw data was obtained from the UCI Machine Learning Repository and represents data collected from the accelerometers from the Samsung Galaxy S smartphone. 

### Files
**README.md** (this file) - An overview of the project and files contained in the repo

**codebook.md** - Detailed description of how the raw data files were processed

**run_analysis.R** - An R script that will read in the raw data files, process them according specifications, and produce a tidy data file. The script produces two data frames that represent the entire data set (HARdata) and the average of each variable for each activity and each subject (HARdata_means).

**HARdata_means.txt** - The tidy data set that contains the average of each variable grouped by each activity and subject with the following columns:

<ul>
 <li>*subject* - the integer id of the subject  
 <li>*activity* - a factor representing the activity type of observation (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  
 <li>*measurements* - These columns (3-68) represent the average measurements across all observations (training and test) from the phone's acelerometer and gyro. They can decoded by &lt;measurement&gt;(mean|std)[xyz]? where &lt;measurement&gt; is the value being observed. 
 </ul>