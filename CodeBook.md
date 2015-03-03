# Coursera Getting and Cleaning Data Project Code Book

The describes the variables in the tidy data set file named data_tidy.csv.

See ReadMe.md file in this repo for a description of the code used to create this data set.

## Variable Naming Convention

This is a modification of the description included with the original data from: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Variable 
=================

Subject

Numeric value for each individual in the data set and ranges from 1 to 30.

Activity

Text description of the activity being done by each subject.  There are 6 possible activities:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

The rest of the variables are numeric values that are normalized to range betwen -1 and +1.

Each variable included in this data set are the average of individual measurements for each activity by each subject that involved a mean or standard deviation. The original raw dataset came from the accelerometer and gyroscope 3-axial raw signals TimeAcc(XYZ) and TimeGyro(XYZ). These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcc(XYZ) and TimeGravityAcc(XYZ)) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk(XYZ) and TimeBodyGyroJerk(XYZ)). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccMag, TimeGravityAccMag, TimeBodyAccJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FreqBodyAcc(XYZ), FreqBodyAccJerk(XYZ), FreqBodyGyro(XYZ), FreqBodyAccJerkMag, FreqBodyGyroMag, FreqBodyGyroJerkMag.   Weighted average of the frequency components was calculated to obtain a mean frequency prducing MeanFreq

These signals were used to estimate variables of the feature vector for each pattern:  
('X','Y', 'Z') is used to denote 3-axial signals in the X, Y and Z directions.


Averages of these variables are included:

Mean: Mean value
Std: Standard deviation
MeanFreq: Weighted average of the frequency components to obtain a mean frequency


## Variables in file data_tidy.csv

Subject   
Activity   
TimeBodyAccMeanX   
TimeBodyAccMeanY   
TimeBodyAccMeanZ   
TimeBodyAccStdX   
TimeBodyAccStdY   
TimeBodyAccStdZ   
TimeGravityAccMeanX   
TimeGravityAccMeanY   
TimeGravityAccMeanZ   
TimeGravityAccStdX   
TimeGravityAccStdY   
TimeGravityAccStdZ   
TimeBodyAccJerkMeanX   
TimeBodyAccJerkMeanY   
TimeBodyAccJerkMeanZ   
TimeBodyAccJerkStdX   
TimeBodyAccJerkStdY   
TimeBodyAccJerkStdZ   
TimeBodyGyroMeanX   
TimeBodyGyroMeanY   
TimeBodyGyroMeanZ   
TimeBodyGyroStdX   
TimeBodyGyroStdY   
TimeBodyGyroStdZ   
TimeBodyGyroJerkMeanX   
TimeBodyGyroJerkMeanY   
TimeBodyGyroJerkMeanZ   
TimeBodyGyroJerkStdX   
TimeBodyGyroJerkStdY   
TimeBodyGyroJerkStdZ   
TimeBodyAccMagMean   
TimeBodyAccMagStd   
TimeGravityAccMagMean   
TimeGravityAccMagStd   
TimeBodyAccJerkMagMean   
TimeBodyAccJerkMagStd   
TimeBodyGyroMagMean   
TimeBodyGyroMagStd   
TimeBodyGyroJerkMagMean   
TimeBodyGyroJerkMagStd   
FreqBodyAccMeanX   
FreqBodyAccMeanY   
FreqBodyAccMeanZ   
FreqBodyAccStdX   
FreqBodyAccStdY   
FreqBodyAccStdZ   
FreqBodyAccMeanFreqX   
FreqBodyAccMeanFreqY   
FreqBodyAccMeanFreqZ   
FreqBodyAccJerkMeanX   
FreqBodyAccJerkMeanY   
FreqBodyAccJerkMeanZ   
FreqBodyAccJerkStdX   
FreqBodyAccJerkStdY   
FreqBodyAccJerkStdZ   
FreqBodyAccJerkMeanFreqX   
FreqBodyAccJerkMeanFreqY   
FreqBodyAccJerkMeanFreqZ   
FreqBodyGyroMeanX   
FreqBodyGyroMeanY   
FreqBodyGyroMeanZ   
FreqBodyGyroStdX   
FreqBodyGyroStdY   
FreqBodyGyroStdZ   
FreqBodyGyroMeanFreqX   
FreqBodyGyroMeanFreqY   
FreqBodyGyroMeanFreqZ   
FreqBodyAccMagMean   
FreqBodyAccMagStd   
FreqBodyAccMagMeanFreq   
FreqBodyAccJerkMagMean   
FreqBodyAccJerkMagStd   
FreqBodyAccJerkMagMeanFreq   
FreqBodyGyroMagMean   
FreqBodyGyroMagStd   
FreqBodyGyroMagMeanFreq   
FreqBodyGyroJerkMagMean   
FreqBodyGyroJerkMagStd   
FreqBodyGyroJerkMagMeanFreq   
