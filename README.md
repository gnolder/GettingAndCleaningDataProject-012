---
output: html_document
---
# Coursera Getting and Cleaning Data Project ReadMe File

The ReadMe contains a short description of how to run the code what the code does and how the code works.

The entire assignment and project details including links to the original data source and data description are listed last.

## Process for running script

Run the script (run_analysis.R) in the same working directory with the unzipped raw data folder named (without the quotes) "UCI HAR Dataset".

The output is a file named "data_tidy.txt" which is written to the working directory.

## Script Description

The script (run_analysis.R) is broken into the five basic steps outlined in the project assignment:

Step 1. Merge the training and the test sets to create one data set.

For the test data set, read in the files for subject ids, the raw data and activities and then combine the three data frames into a single test data frame.

For the training data set, read in the files for subject ids, the raw data and activities and then combine the three data frames into a single training data frame.

Combine the two data frames into a single data frame for all data.

Step 2. Extract only the measurements on the mean and standard deviation for each measurement.

Determine the correct columns based on the names in the features.txt file.

The showing mean(), std(), and meanFreq were determined to be the columns of interest.  Use grep() to identify those columns and then subset them out along with the column indicating the subject for each data row and the column indicating the activity for each data row.

Step 3. Use descriptive activity names to name the activities in the data set.

Use gsub() to rename each activity label from a numeric index to a descriptive character string as shown in the activity labels file.

Step 4. Appropriately labels the data set with descriptive variable names.

Extract the feature/variable names of interest.  Use a series of gsub() statements to clean up the names with the goal of making them more readable and legal R variable names.

Step 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

Create a matrix to hold all of the average values.  Use nested loops to calculate and store the average value for each measurement of each activity for each subject.

Create the tidy data by including columns in front of the data to indicate the subject and the activity.

Assign descriptive names to each column which include an indication that the values are averages.

Write the data to a text file called data_tidy.txt

## Project Assignment

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck
