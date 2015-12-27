Getting and Cleaning Data -- Course Project
====================================================
Author: Paul Kerl  
Date: 12/27/2015  

This repository cotains the following files:  

* run_analysis.R    
* codebook.md   
* final.txt   
* README.md  

The "run_analysis.R" file contains the R code that does the following five steps:  
1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3. Uses descriptive activity names to name the activities in the data set  
4. Appropriately labels the data set with descriptive variable names.  
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
  
The codebook.md file describes the output file of run_analysis.R (final.txt), the variables, the data, and work that performed to "tidy" the data  

###Original data from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
downloaded on 12-27-2015

###Detailed dataset information: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Citation
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
