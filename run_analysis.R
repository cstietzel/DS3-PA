## Load libraries
library(stringr)
library(dplyr)

## Use testnum to load only a subest of rows from measurement files 
## to save time in testing. Use -1 for entire data set
testnum <- -1

## Read in feature names from features.txt
featureNames <- read.delim("../UCI-HAR/features.txt", sep = " ",  
                         col.names = c("cnum", "feature"), 
                         colClasses = c("integer", "character"),
                         header = FALSE) %>% as_tibble()
numfeatures = nrow(featureNames)

## determine only the measures we are interested in: mean & std's
mean_std_cols <- grep("mean\\(\\)|std\\(\\)",featureNames$feature)
columns_to_read <- rep("NULL", numfeatures)
columns_to_read[mean_std_cols] <- "numeric"

## Read in the activity labels and make them factors; sort by id asc for proper lookup
activityNames <- read.delim("../UCI-HAR/activity_labels.txt", sep = " ",  
                          col.names = c("activityid", "activity"), 
                          colClasses = c("integer", "factor"),
                          header = FALSE) %>% as_tibble() %>%
    arrange(activityid)

## Process Test Data Files and create Test Data Set 

## Read in subject id for each observation
subjects <- read.delim("../UCI-HAR/test/subject_test.txt", sep = " ",  
                      col.names = c("subjectid"), 
                      colClasses = c("integer"), 
                      nrows = testnum, header = FALSE) %>% as_tibble()

## Read in activity for each observation and look up the activity label
activities <- read.delim("../UCI-HAR/test/y_test.txt", sep = " ",  
                        col.names = c("activityid"), 
                        colClasses = c("integer"),
                        nrows = testnum, header = FALSE) %>% as_tibble()
activities <- mutate(activities, activity=activityNames$activity[activities$activityid])

## Read in only the measurements we want from feature files
## files fixed width with each feature requiring 16 chars
measurements <- read.fwf("../UCI-HAR/test/X_Test.txt", widths = rep(16, numfeatures),
                       colClasses = columns_to_read, 
                       n = testnum, header = FALSE) %>% as_tibble()

## Add column names for the measurements
colnames(measurements) <- featureNames$feature[mean_std_cols]

## combine tables to create one dataset with subject, activity and all measurements
testdata <- bind_cols(subjects, select(activities, activity), 
                      data_frame(dataset=rep("test", nrow(subjects))), 
                      measurements)

## Repeat the same file processing for training data
## Process Training Data Files and create Training Data Set 

## Read in subject id for each observation
subjects <- read.delim("../UCI-HAR/train/subject_train.txt", sep = " ",  
                       col.names = c("subjectid"), 
                       colClasses = c("integer"),
                       nrows = testnum, header = FALSE) %>% as_tibble()

## Read in activity for each observation and look up the activity label
activities <- read.delim("../UCI-HAR/train/y_train.txt", sep = " ",  
                         col.names = c("activityid"), 
                         colClasses = c("integer"),
                         nrows = testnum, header = FALSE) %>% as_tibble()
activities <- mutate(activities, activity=activityNames$activity[activities$activityid])

## Read in only the measurements we want from feature files
## files fixed width with each feature requiring 16 chars
measurements <- read.fwf("../UCI-HAR/train/X_train.txt", widths = rep(16, numfeatures),
                         colClasses = columns_to_read, 
                         n = testnum, header = FALSE) %>% as_tibble()

## Add column names for the measurements
colnames(measurements) <- featureNames$feature[mean_std_cols]

## combine tables to create one dataset with subject, activity and all measurements
trainingdata <- bind_cols(subjects, select(activities, activity), 
                          data_frame(dataset=rep("training", nrow(subjects))), 
                          measurements)

## Combine the test and training data into one measurement data set
HARdata <- bind_rows(testdata,trainingdata) %>%
    mutate(dataset = as.factor(dataset))

## Pretty the variable names 
##  remove parends and hyphens and correct descriptions where "body" was duplicated
colnames(HARdata) <- gsub("\\-|\\(|\\)","", tolower(colnames(HARdata)))
colnames(HARdata) <- sub("bodybody", "body", colnames(HARdata))

## Step 5: Use data to produce means by subject and activity
HARdata_means <- group_by(HARdata, subjectid, activity) %>% select(-dataset) %>%
    summarize_all(mean)

## Write out data set
write.table(HARdata_means, file="HARdata_means.txt", row.names = FALSE)


