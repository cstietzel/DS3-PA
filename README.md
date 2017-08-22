# DS3-PA
Programming Assignment for Coursera - Data Science 3 

Contents:
This repository contains files and scripts for the Programming Assignment for the Coursera Getting and Cleaning Data class.

Overview:
Creating applications for active consumers is creating surge wearable computing algorithms.  Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. To facilities this, the project will enhance reformat the raw data set into a tidy format specified by the Coursera Data Science Instructors.  The raw data was obtained from the UCI Machine Learning Repository and represents data collected from the accelerometers from the Samsung Galaxy S smartphone. 

Files:
README.md - (This file) An overview of the project and files contained in the repo

codebook.md - Detailed description of how the raw data files were processed

run_analysis.R - An R script that will read in the raw data files, process them according specifications, and produce a tidy data file.

HARData.csv - The tidy data set. with the following columns
 1. subject - the integer id of the subject
 2. activity - a factor representing the activity type of observation 
    (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
 3. dataset - the data set the obserrvation was obtained from (test, training)
 4-68. These columns represent the measurements from the phone's acelerometer and gyro. 
    they can decoded as follows where <measurement> is the value being observed:
    <measurement>(mean|std)[xyz]?
        tbodyaccmeanx
        tbodyaccmeany
        tbodyaccmeanz
        tbodyaccstdx
        tbodyaccstdy
        tbodyaccstdz
        tgravityaccmeanx
        tgravityaccmeany
        tgravityaccmeanz
        tgravityaccstdx
        tgravityaccstdy
        tgravityaccstdz
        tbodyaccjerkmeanx
        tbodyaccjerkmeany
        tbodyaccjerkmeanz
        tbodyaccjerkstdx
        tbodyaccjerkstdy
        tbodyaccjerkstdz
        tbodygyromeanx
        tbodygyromeany
        tbodygyromeanz
        tbodygyrostdx
        tbodygyrostdy
        tbodygyrostdz
        tbodygyrojerkmeanx
        tbodygyrojerkmeany
        tbodygyrojerkmeanz
        tbodygyrojerkstdx
        tbodygyrojerkstdy
        tbodygyrojerkstdz
        tbodyaccmagmean
        tbodyaccmagstd
        tgravityaccmagmean
        tgravityaccmagstd
        tbodyaccjerkmagmean
        tbodyaccjerkmagstd
        tbodygyromagmean
        tbodygyromagstd
        tbodygyrojerkmagmean
        tbodygyrojerkmagstd
        fbodyaccmeanx
        fbodyaccmeany
        fbodyaccmeanz
        fbodyaccstdx
        fbodyaccstdy
        fbodyaccstdz
        fbodyaccjerkmeanx
        fbodyaccjerkmeany
        fbodyaccjerkmeanz
        fbodyaccjerkstdx
        fbodyaccjerkstdy
        fbodyaccjerkstdz
        fbodygyromeanx
        fbodygyromeany
        fbodygyromeanz
        fbodygyrostdx
        fbodygyrostdy
        fbodygyrostdz
        fbodyaccmagmean
        fbodyaccmagstd
        fbodyaccjerkmagmean
        fbodyaccjerkmagstd
        fbodygyromagmean
        fbodygyromagstd
        fbodygyrojerkmagmean
        fbodygyrojerkmagstd