---
title: "ReadME"
author: "Laura Collins"
date: "2/16/2017"
output: html_document
---


## Getting and Cleaning Data Project

This project is focused on collecting, working with and cleaning a specific data set to prepare tidy data that can be used for later analysis. The data we use for this project was collected from accelerometers from the Samsung Galaxy 5 smartphone, and can be found here: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.

## Files in this repo
* ReadMe.md - explains how the scripts in the repo work and are connected
* CodeBook.md - describes the variables, the data, and any transformations or work that you performed to clean up the data
* run_analysis.R - the analysis code

## Analysis Summary
run_analysis.R downloads the data files and stores them in a data folder off the working directory (which it will create if there isn't one already). After several steps outlined below, this script will write a tidy data set with the average value for each measurement for each subject and activity to the file tidy1.txt. 

Note: This script will install and load the dplyr package. 

## Analysis Outline

* Step 1 - Merge the training and test sets to create one data set.

    1.  Load the data and store the zipped data file in a "data" folder as run.zip. Also install and load the dplyr package. 
    
    2. Store the names of the files in the zipped data folder.
    
    3. Store the raw data we want from the test and train sets, as well as the Column Names from the features.txt file.
    
    4. Use merge() to merge the training and test sets into one data set called allData
    
* Step 2 - Extract only the measurements on the mean and standard deviation for each measurement.

    1. Identify which columns contain the mean and standard deviation of each measurement using grep(). 
    
    2. Store the data in the mean and standard deviation columns as well as the Subject numbers and Activity Labels in a new data set called meanStdData. 
    
* Step 3 - Use descriptive activity names to name the activities in the data set

    1. Convert the Activity Labels column to factors. 
    
    2. Change the factor labels to more descriptive names: (1: "Walking", 2: "Walking Upstairs", 3: "Walking Downstairs", 4: "Sitting", 5: "Standing", 6: "Laying")
    
* Step 4 - Appropriately label the data set with descriptive variable names

    1. Use sub() to make substitutions for several parts of the variable names, e.g. t -> Time, f -> Frequency, Acc -> Accelerometer, Gyro -> Gyroscope, Mag -> Magnitude, std -> standardDeviation
    
* Step 5 - Create a second, independent tidy data set with the average of each variable for each activity and each subject.

    1. Used aggregate() to collect the data and calculate the average of each variable for each activity and each subject. 
    
    2. Used write.table() to write the tidy data to a text file called tidy1.txt
    





