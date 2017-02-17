---
title: "CodeBook"
author: "Laura Collins"
date: "2/16/2017"
output: html_document
---

## CodeBook for Getting and Cleaning Data Project

This summarizes the data used in the Getting and Cleaning Data course final project, and the variables defined below are included in the tidy1.txt file. 

## Feature Selection

The following is the description included in the dataset:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Note: The original variable names have been modified to make them easier to understand, that is, abbreviations used in the original names were replaced by the long form (t -> Time, etc.).

## Identifiers
`Subject` - The ID of the test subject, ranging from 1 to 30. 30% of the test subjects were selected for the test set, and 70% were selected for the train set. 
`Activity Labels` - The type of activity that was done for the measurement. These could be (`Walking`, `Walking Upstairs`, `Walking Downstairs`, `Sitting`, `Standing`, `Laying`)

## Measurements
Note: The numbers for the variables below indicate the column they are stored in within the tidy data set. 

 3. `Time.BodyAccelerometer.mean...X`
 
    * Average X Time domain measurement from the Body Accelerometer 
    
    
    
 4. `Time.BodyAccelerometer.mean...Y`
 
    * Average Y Time domain measurement from the Body Accelerometer 
    
    
    
 5. `Time.BodyAccelerometer.mean...Z`
 
    * Average Z Time domain measurement from the Body Accelerometer  
    
    
    
 6. `Time.BodyAccelerometer.standardDeviation...X`
 
    * Standard Deviation of the X Time domain measurement from the Body Accelerometer  
    
    
    
 7. `Time.BodyAccelerometer.standardDeviation...Y`
 
    * Standard Deviation of the Y Time domain measurement from the Body Accelerometer 
    
    
    
 8. `Time.BodyAccelerometer.standardDeviation...Z`
 
    * Standard Deviation of the Z Time domain measurement from the Body Accelerometer  
    
    
    
 9. `Time.GravityAccelerometer.mean...X`
 
    * Average X Time domain measurement from the Gravity Accelerometer  
    
    
    
10. `Time.GravityAccelerometer.mean...Y`

    * Average Y Time domain measurement from the Gravity Accelerometer 
    
    
    
11. `Time.GravityAccelerometer.mean...Z`

    * Average Z Time domain measurement from the Gravity Accelerometer 
    
    
    
12. `Time.GravityAccelerometer.standardDeviation...X` 

    * Standard Deviation of the X Time domain measurement from the Gravity Accelerometer
    
    
13. `Time.GravityAccelerometer.standardDeviation...Y` 

    * Standard Deviation of the Y Time domain measurement from the Gravity Accelerometer 
    
    
14. `Time.GravityAccelerometer.standardDeviation...Z` 

    * Standard Deviation of the Z Time domain measurement from the Gravity Accelerometer
    
    
15. `Time.BodyAccelerometerJerk.mean...X` 
    
    * Average X Time domain measurement of the Body Accelerometer Jerk
    
    
16. `Time.BodyAccelerometerJerk.mean...Y` 

    * Average Y Time domain measurement of the Body Accelerometer Jerk
    
    
17. `Time.BodyAccelerometerJerk.mean...Z` 
    
    * Average Z Time domain measurement of the Body Accelerometer Jerk
    
    
18. `Time.BodyAccelerometerJerk.standardDeviation...X`
 
    * Standard Deviation of the X Time domain measurement of the Body Accelerometer Jerk    
    
    
19. `Time.BodyAccelerometerJerk.standardDeviation...Y` 

    * Standard Deviation of the Y Time domain measurement of the Body Accelerometer Jerk
    
    
20. `Time.BodyAccelerometerJerk.standardDeviation...Z`

    * Standard Deviation of the Z Time domain measurement of the Body Accelerometer Jerk
    
    
21. `Time.BodyGyroscope.mean...X`   

    * Average X Time domain measurement of the Body Gyroscope
    
    
22. `Time.BodyGyroscope.mean...Y`  

    * Average Y Time domain measurement of the Body Gyroscope
    
    
23. `Time.BodyGyroscope.mean...Z`     

    * Average Z Time domain measurement of the Body Gyroscope
    
    
24. `Time.BodyGyroscope.standardDeviation...X` 
 
    * Standard Deviation of the X Time domain measurement from the Body Gyroscope     
    
    
25. `Time.BodyGyroscope.standardDeviation...Y` 

    * Standard Deviation of the Y Time domain measurement of the Body Gyroscope
    
    
26. `Time.BodyGyroscope.standardDeviation...Z`

    * Standard Deviation of the Z Time domain measurement of the Body Gyroscope
    
    
27. `Time.BodyGyroscopeJerk.mean...X` 
    
    * Average X Time domain measurement of the Body Gyroscope Jerk
    
    
28. `Time.BodyGyroscopeJerk.mean...Y`  

    * Average Y Time domain measurement of the Body Gyroscope Jerk
    
    
29. `Time.BodyGyroscopeJerk.mean...Z`  

    * Average Z Time domain measurement of the Body Gyroscope Jerk
    
    
30. `Time.BodyGyroscopeJerk.standardDeviation...X`  

    * Standard Deviation of the X Time domain measurement of the Body Gyroscope Jerk
    
    
31. `Time.BodyGyroscopeJerk.standardDeviation...Y` 

    * Standard Deviation of the Y Time domain measurement of the Body Gyroscope Jerk
    
    
32. `Time.BodyGyroscopeJerk.standardDeviation...Z`

    * Standard Deviation of the Z Time domain measurement of the Body Gyroscope Jerk 
    
    
33. `Time.BodyAccelerometerMagnitude.mean..` 

    * Average Time domain measurement of the Body Accelerometer Magnitude
    
    
34. `Time.BodyAccelerometerMagnitude.standardDeviation..` 

    * Standard Deviation of the Time domain measurement of the Body Accelerometer Magnitude
    
    
35. `Time.GravityAccelerometerMagnitude.mean..`  

    * Average Time domain measurement of the Gravity Accelerometer Magnitude
    
    
36. `Time.GravityAccelerometerMagnitude.standardDeviation..` 

    * Standard Deviation of the Time domain measurement of the Gravity Accelerometer Magnitude 
    
    
37. `Time.BodyAccelerometerJerkMagnitude.mean..` 

    * Average Time domain measurement of the Body Accelerometer Jerk Magnitude 
    
    
38. `Time.BodyAccelerometerJerkMagnitude.standardDeviation..`  

    * Standard Deviation of the Time domain measurement of the Body Accelerometer Jerk Magnitude
    
    
39. `Time.BodyGyroscopeMagnitude.mean..`  

    * Average Time domain measurement of the Body Gyroscope Magnitude
    
    
40. `Time.BodyGyroscopeMagnitude.standardDeviation..` 

    * Standard Deviation of the Time domain measurement of the Body Gyroscope Magnitude
    
    
41. `Time.BodyGyroscopeJerkMagnitude.mean..`  

    * Average Time domain measurement of the Body Gyroscope Jerk Magnitude
    
    
42. `Time.BodyGyroscopeJerkMagnitude.standardDeviation..` 

    * Standard Deviation of the Time domain measurement of the Body Gyroscope Jerk Magnitude 
    
    
43. `Frequency.BodyAccelerometer.mean...X`

    * Average X Frequency domain measurement of the Body Accelerometer
    
    
44. `Frequency.BodyAccelerometer.mean...Y` 

    * Average Y Frequency domain measurement of the Body Accelerometer 
    
    
45. `Frequency.BodyAccelerometer.mean...Z`  

    * Average Z Frequency domain measurement of the Body Accelerometer
    
    
46. `Frequency.BodyAccelerometer.standardDeviation...X` 
 
    * Standard Deviation of the X Frequency domain measurement from the Body Accelerometer     
    
    
47. `Frequency.BodyAccelerometer.standardDeviation...Y`

    * Standard Deviation of the Y Frequency domain measurement from the Body Accelerometer
    
    
48. `Frequency.BodyAccelerometer.standardDeviation...Z` 

    * Standard Deviation of the Z Frequency domain measurement from the Gravity Accelerometer 
    
    
49. `Frequency.BodyAccelerometer.meanFrequency...X`  

    * Average X Frequency - Frequency domain measurement of the Body Accelerometer
    
    
50. `Frequency.BodyAccelerometer.meanFrequency...Y`   

    * Average Y Frequency - Frequency domain measurement of the Body Accelerometer
    
    
51. `Frequency.BodyAccelerometer.meanFrequency...Z`    

    * Average Z Frequency - Frequency domain measurement of the Body Accelerometer
    
    
52. `Frequency.BodyAccelerometerJerk.mean...X` 

    * Average X Frequency domain measurement of the Body Accelerometer Jerk
    
    
53. `Frequency.BodyAccelerometerJerk.mean...Y`

    * Average Y Frequency domain measurement of the Body Accelerometer Jerk
    
    
54. `Frequency.BodyAccelerometerJerk.mean...Z`     

    * Average Z Frequency domain measurement of the Body Accelerometer Jerk
    
    
55. `Frequency.BodyAccelerometerJerk.standardDeviation...X` 
 
    * Standard Deviation of the X Frequency domain measurement of the Body Accelerometer Jerk    
    
    
56. `Frequency.BodyAccelerometerJerk.standardDeviation...Y`

    * Standard Deviation of the Y Frequency domain measurement of the Body Accelerometer Jerk
    
    
57. `Frequency.BodyAccelerometerJerk.standardDeviation...Z`

    * Standard Deviation of the Z Frequency domain measurement of the Body Accelerometer Jerk
    
    
58. `Frequency.BodyAccelerometerJerk.meanFrequency...X`  

    * Average X Frequency - Frequency domain measurement of the Body Accelerometer Jerk
    
    
59. `Frequency.BodyAccelerometerJerk.meanFrequency...Y`   

    * Average Y Frequency - Frequency domain measurement of the Body Accelerometer Jerk
    
    
60. `Frequency.BodyAccelerometerJerk.meanFrequency...Z`   

    * Average Z Frequency - Frequency domain measurement of the Body Accelerometer Jerk
    
    
61. `Frequency.BodyGyroscope.mean...X`  

    * Average X Frequency domain measurement of the Body Gyroscope 
    
    
62. `Frequency.BodyGyroscope.mean...Y`  

    * Average Y Frequency domain measurement of the Body Gyroscope
    
    
63. `Frequency.BodyGyroscope.mean...Z`    

    * Average Z Frequency domain measurement of the Body Gyroscope
    
    
64. `Frequency.BodyGyroscope.standardDeviation...X`  

    * Standard Deviation of the X Frequency domain measurement of the Body Gyroscope
    
    
65. `Frequency.BodyGyroscope.standardDeviation...Y` 

    * Standard Deviation of the Y Frequency domain measurement of the Body Gyroscope
    
    
66. `Frequency.BodyGyroscope.standardDeviation...Z` 

    * Standard Deviation of the Z Frequency domain measurement of the Body Gyroscope 
    
    
67. `Frequency.BodyGyroscope.meanFrequency...X` 

    * Average X Frequency - Frequency domain measurement of the Body Gyroscope
    
    
68. `Frequency.BodyGyroscope.meanFrequency...Y`  

    * Average Y Frequency - Frequency domain measurement of the Body Gyroscope
    
    
69. `Frequency.BodyGyroscope.meanFrequency...Z`   

    * Average Z Frequency - Frequency domain measurement of the Body Gyroscope
    
    
70. `Frequency.BodyAccelerometerMagnitude.mean..` 

    * Average Frequency domain measurement of the Body Accelerometer Magnitude
    
    
71. `Frequency.BodyAccelerometerMagnitude.standardDeviation..`   

    * Standard Deviation of the Frequency domain measurement of the Body Accelerometer Magnitude
    
    
72. `Frequency.BodyAccelerometerMagnitude.meanFrequency..` 

    * Average Frequency - Frequency domain measurement of the Body Accelerometer Magnitude
    
    
73. `Frequency.BodyAccelerometerJerkMagnitude.mean..`  

    * Average Frequency domain measurement of the Body Accelerometer Jerk Magnitude
    
    
74. `Frequency.BodyAccelerometerJerkMagnitude.standardDeviation..`

    * Standard Deviation of the Frequency domain measurement of the Body Accelerometer Jerk Magnitude
    
    
75. `Frequency.BodyAccelerometerJerkMagnitude.meanFrequency..` 

    * Average Frequency - Frequency domain measurement of the Body Accelerometer Jerk Magnitude
    
    
76. `Frequency.BodyGyroscopeMagnitude.mean..`      

    * Average Frequency domain measurement of the Body Gyroscope Magnitude
    
    
77. `Frequency.BodyGyroscopeMagnitude.standardDeviation..`   

    * Standard Deviation of the Frequency domain measurement of the Body Gyroscope Magnitude
    
    
78. `Frequency.BodyGyroscopeMagnitude.meanFrequency..`     
    
    * Average Frequency - Frequency domain measurement of the Body Gyroscope Magnitude
    
    
79. `Frequency.BodyGyroscopeJerkMagnitude.mean..`  

    * Average Frequency domain measurement of the Body Gyroscope Jerk Magnitude
    
    
80. `Frequency.BodyGyroscopeJerkMagnitude.standardDeviation..`   

    * Standard Deviation of the Frequency domain measurement of the Body Gyroscope Jerk Magnitude
    
    
81. `Frequency.BodyGyroscopeJerkMagnitude.meanFrequency..`      

    * Average Frequency of the Frequency domain measurement of the Body Gyroscope Jerk Magnitude

