# Coursera Getting and Cleaning Data -- Course Project 
# Author: Paul Kerl
# Date: 12/27/2015

###################################################################################
###### 1. Merges the training and the test sets to create one data set. ###########
###################################################################################

#set working directory
#setwd("C:/working/directory/") #dummy working directory

#X test and training sets (561 feature dataset)
df_test  <- read.table("UCI HAR Dataset/test/X_test.txt")
df_train <- read.table("UCI HAR Dataset/train/X_train.txt")
df <- rbind(df_test, df_train)

#subject ID test and training sets
df_subtest <- read.table("UCI HAR Dataset/test/subject_test.txt")
df_subtrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
df_sub <- rbind(df_subtest, df_subtrain)
#name the column "Subject"
colnames(df_sub) <- c("Subject")

#Y test and training sets (activities)
df_ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
df_ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
df_act <- rbind(df_ytest, df_ytrain)
#name the column "Activity"
colnames(df_act) <- c("Activity")

#merge datasets (Final dataset for Part 1)
df_full <- cbind(df,df_sub,df_act) # 1st through 561st columns are features,
                                   # 562nd column is subjects, 563rd column is 
                                   # activities

###################################################################################
###### 2. Extracts only the measurements on the mean and standard deviation  ######
###### for each measurement.                                                 ######
###################################################################################

# extract only the measurements on the mean and standard deviation for 
# measurements
# Interpreted as any variable containing "std", "mean" or "Mean"


#load in features.txt
features <- read.table("UCI HAR Dataset/features.txt")

#filter based on containing one of "std", "mean" or "Mean"
meanAndStdDevCols <- filter(features, grepl("mean|Mean|std",V2))[,1]
meanAndStdDevCols <- c(meanAndStdDevCols,562,563) #add on Subject and Activity columns
meanAndStdDevSubAct <- df_full[meanAndStdDevCols]

#subsetted dataset (Final dataset for Part 2) 
#Note: Includes subject and activity columns
meanAndStdDev <- df_full[meanAndStdDevCols]


###################################################################################
###### 3. Uses descriptive activity names to name the activities in the data set ##
###################################################################################

#use activity labels dataset to label activities
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

#replace the numbers using the match on activity # to activity name
meanAndStdDev$Activity <- activities[,2][match(meanAndStdDev$Activity, activities[,1])]

###################################################################################
###### 4.  Appropriately labels the data set with descriptive variable names. #####
###################################################################################

#variable labels are in the "features" dataframe

#label columns with features dataframe
column_names <- c(as.vector(features[,2]),"Subject","Activity")

#add "descriptive" column names using string replacement
#Acc -> Acceleration
column_names <- gsub("Acc","Acceleration",column_names)
#Mag -> Magnitude
column_names <- gsub("Mag","Magnitude",column_names)
#Freq -> Frequency
column_names <- gsub("Freq","Frequency",column_names)
#mean -> Mean
column_names <- gsub("mean","Mean",column_names)
#std -> StandardDeviation
column_names <- gsub("std","StandardDeviation",column_names)
#Remove "-" and "()"
column_names <- gsub("-","",column_names)
column_names <- gsub("\\(","",column_names)
column_names <- gsub("\\)","",column_names)

#label full dataset with modified column names
colnames(df_full) <- column_names

#filter based on containing one of "std", "mean" or "Mean"
meanAndStdDevCols <- filter(features, grepl("mean|Mean|std",V2))[,1]
meanAndStdDevCols <- c(meanAndStdDevCols,562,563) #add on Subject and Activity columns

#final labeled dataset
meanAndStdDevSubAct <- df_full[meanAndStdDevCols]

###################################################################################
###### 5. From the data set in step 4, creates a second, independent tidy data ####
######    set with the average of each variable for each activity and each     ####
######    subject.                                                             ####  
###################################################################################

#use dplyr to group by activity and subject and take mean of each variable
library(dplyr)

#take mean of these columns for each subject and activity
df_final <- meanAndStdDevSubAct %>% group_by(Subject,Activity) %>% summarise_each(funs(mean))

#write final table
write.table(df_final,file="final.txt", row.name=FALSE)
