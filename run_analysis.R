## 
## First need to load the data. 
if(!file.exists("./data")){dir.create("./data")}

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
              destfile="./data/run.zip")

install.packages("dplyr"); library(dplyr)

# Get the names of the files in the zipped data folder
dataNames <- unzip("./data/run.zip")

# Store the data we want
testSubject <- read.table(dataNames[14], header=FALSE, col.names = "Subject")
trainSubject <- read.table(dataNames[26], header=FALSE, col.names = "Subject")
columnNames <- read.table(dataNames[2])

testX <- read.table(dataNames[15], header=FALSE, col.names = columnNames[,2])
testY <- read.table(dataNames[16], header=FALSE, col.names = "Activity Labels")
Type <- "Test"
test <- cbind(testSubject, testY, testX, Type)

trainX <- read.table(dataNames[27], header=FALSE, col.names = columnNames[,2])
trainY <- read.table(dataNames[28], header=FALSE, col.names = "Activity Labels")
Type <- "Train"
train <- cbind(trainSubject, trainY, trainX,Type)

## Need to merge the test and training data into one data set
allData <- merge(test, train, by = intersect(names(test), names(train)), all=TRUE, sort = FALSE)

## Now that all the data is in one data set, we need to extract only the columns
## with mean and standard deviation measurements

indices <- grep("mean|std", names(allData), value=FALSE)
meanStdData <- allData[,c(1,2,indices)]

## Use descriptive activity names to name the activities in the data set
meanStdData[,2]<-factor(meanStdData[,2])
levels(meanStdData[,2]) <- c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying")

## Appropriately label the data set with descriptive variable names
namesMeanStd <- names(meanStdData)
namesMeanStd <- sub("^t", "Time.", namesMeanStd)
namesMeanStd <- sub("^f", "Frequency.", namesMeanStd)
namesMeanStd <- sub("meanFreq", "meanFrequency", namesMeanStd)
namesMeanStd <- sub("Acc", "Accelerometer", namesMeanStd)
namesMeanStd <- sub("Gyro", "Gyroscope", namesMeanStd)
namesMeanStd <- sub("Mag", "Magnitude", namesMeanStd)
namesMeanStd <- sub("std", "standardDeviation", namesMeanStd)
namesMeanStd <- sub("BodyBody", "Body", namesMeanStd)

colnames(meanStdData) <- namesMeanStd

## Create a second, independent tidy data set with the average of each variable for each activity and each subject.

tidyData <- aggregate(meanStdData[,3:ncol(meanStdData)], by=list("Subject" = meanStdData$Subject, "Activity Labels" = meanStdData$Activity.Labels), mean)

## Write the data to a txt file
write.table(tidyData, "tidy1.txt", append=FALSE, quote = FALSE, col.names = TRUE, row.names = FALSE)
