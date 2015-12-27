Getting and Cleaning Data -- Codebook
=======================================
This Codebook Describes the data, and any transformations and tidying of the data, and the variables that appear in the final tidied dataset  
Author: Paul Kerl  
Date: 12/27/2015  

####Dataset from  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip   
downloaded on 12-27-2015  

####Detailed dataset information:   
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  
  
The run_analysis.R script performs the following steps to clean or "tidy" the dataset:  

###Variables  
#####First Two Columns  
Subject  
Activity  
  
#####Remaining Columns (mean value for a given subject and activity, the variables are normalized from their original units to -1 to 1.)  
tBodyAccelerationMeanX	  
tBodyAccelerationMeanY	  
tBodyAccelerationMeanZ	  
tBodyAccelerationStandardDeviationX	  
tBodyAccelerationStandardDeviationY	  
tBodyAccelerationStandardDeviationZ	  
tGravityAccelerationMeanX	  
tGravityAccelerationMeanY	  
tGravityAccelerationMeanZ	  
tGravityAccelerationStandardDeviationX	  
tGravityAccelerationStandardDeviationY	  
tGravityAccelerationStandardDeviationZ	  
tBodyAccelerationJerkMeanX	  
tBodyAccelerationJerkMeanY	  
tBodyAccelerationJerkMeanZ	  
tBodyAccelerationJerkStandardDeviationX	  
tBodyAccelerationJerkStandardDeviationY	  
tBodyAccelerationJerkStandardDeviationZ	  
tBodyGyroMeanX	  
tBodyGyroMeanY	  
tBodyGyroMeanZ	  
tBodyGyroStandardDeviationX	  
tBodyGyroStandardDeviationY	  
tBodyGyroStandardDeviationZ	  
tBodyGyroJerkMeanX	  
tBodyGyroJerkMeanY	  
tBodyGyroJerkMeanZ	  
tBodyGyroJerkStandardDeviationX	  
tBodyGyroJerkStandardDeviationY	  
tBodyGyroJerkStandardDeviationZ	  
tBodyAccelerationMagnitudeMean	  
tBodyAccelerationMagnitudeStandardDeviation	  
tGravityAccelerationMagnitudeMean	  
tGravityAccelerationMagnitudeStandardDeviation	  
tBodyAccelerationJerkMagnitudeMean	  
tBodyAccelerationJerkMagnitudeStandardDeviation	  
tBodyGyroMagnitudeMean	  
tBodyGyroMagnitudeStandardDeviation	  
tBodyGyroJerkMagnitudeMean	  
tBodyGyroJerkMagnitudeStandardDeviation	  
fBodyAccelerationMeanX	  
fBodyAccelerationMeanY	  
fBodyAccelerationMeanZ	  
fBodyAccelerationStandardDeviationX	  
fBodyAccelerationStandardDeviationY	  
fBodyAccelerationStandardDeviationZ	  
fBodyAccelerationMeanFrequencyX	  
fBodyAccelerationMeanFrequencyY	  
fBodyAccelerationMeanFrequencyZ	  
fBodyAccelerationJerkMeanX	  
fBodyAccelerationJerkMeanY	  
fBodyAccelerationJerkMeanZ	  
fBodyAccelerationJerkStandardDeviationX	  
fBodyAccelerationJerkStandardDeviationY	  
fBodyAccelerationJerkStandardDeviationZ	  
fBodyAccelerationJerkMeanFrequencyX	  
fBodyAccelerationJerkMeanFrequencyY	  
fBodyAccelerationJerkMeanFrequencyZ	  
fBodyGyroMeanX	  
fBodyGyroMeanY	  
fBodyGyroMeanZ	  
fBodyGyroStandardDeviationX	  
fBodyGyroStandardDeviationY	  
fBodyGyroStandardDeviationZ	  
fBodyGyroMeanFrequencyX	  
fBodyGyroMeanFrequencyY	  
fBodyGyroMeanFrequencyZ	  
fBodyAccelerationMagnitudeMean	  
fBodyAccelerationMagnitudeStandardDeviation	  
fBodyAccelerationMagnitudeMeanFrequency	  
fBodyBodyAccelerationJerkMagnitudeMean	  
fBodyBodyAccelerationJerkMagnitudeStandardDeviation	  
fBodyBodyAccelerationJerkMagnitudeMeanFrequency	  
fBodyBodyGyroMagnitudeMean	  
fBodyBodyGyroMagnitudeStandardDeviation	  
fBodyBodyGyroMagnitudeMeanFrequency	  
fBodyBodyGyroJerkMagnitudeMean	  
fBodyBodyGyroJerkMagnitudeStandardDeviation	  
fBodyBodyGyroJerkMagnitudeMeanFrequency	  
angletBodyAccelerationMean,gravity	  
angletBodyAccelerationJerkMean,gravityMean	  
angletBodyGyroMean,gravityMean	  
angletBodyGyroJerkMean,gravityMean	  
angleX,gravityMean	  
angleY,gravityMean	  
angleZ,gravityMean	  
