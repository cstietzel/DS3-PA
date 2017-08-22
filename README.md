# DS3-PA
Programming Assignment for Coursera - Data Science 3 

### Contents
This repository contains files and scripts for the Programming Assignment for the Coursera Getting and Cleaning Data class.

### Overview
Creating applications for active consumers is creating surge wearable computing algorithms.  Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. To facilities this, the project will enhance reformat the raw data set into a tidy format specified by the Coursera Data Science Instructors.  The raw data was obtained from the UCI Machine Learning Repository and represents data collected from the accelerometers from the Samsung Galaxy S smartphone. 

### Files
**README.md** (this file) - An overview of the project and files contained in the repo

**codebook.md** - Detailed description of how the raw data files were processed

**run_analysis.R** - An R script that will read in the raw data files, process them according specifications, and produce a tidy data file.

**HARData.csv** - The tidy data set with the following columns

<ul>
 <li>*subject* - the integer id of the subject  
 <li>*activity* - a factor representing the activity type of observation (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  
 <li>*dataset* - the data set the observation was obtained from (test, training)  
 <li>*measurements* - These columns (4-69) represent the measurements from the phone's acelerometer and gyro. They can decoded by \<measurement\>(mean|std)[xyz]? where \<measurement>\ is the value being observed. 
 </ul>