###00import LIBS
library(reshape2)
library(dplyr)



###01 LOAD DATA FROM WEB
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/accelerometers.zip",method="curl")
unzip(zipfile = "./data/accelerometers.zip", exdir = "./data")

#feactures and activity data
features <- read.table("./data/UCI HAR Dataset/features.txt",
                       col.names = c("n", "features")
                       )
activity <- read.table("./data/UCI HAR Dataset/activity_labels.txt",
                       col.names = c("code", "activity") 
                       )
#test data
xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt",
                    col.names = c("code"))
stest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

#train data

xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt",
                     col.names = c("code") )
strain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

#merge test-train

xdata <- rbind(xtrain, xtest, col.na)
ydata <- rbind(ytrain, ytest)
sdata <- rbind(strain, stest)

MergeDat <- cbind(sdata, ydata, xdata)


###02 Extracts only the measurements on the mean and standard deviation for each measurement.
names(MergeDat)[1] = c("subject")
mn_sd <- select(MergeDat, subject, code, contains("mean"), contains("std"))




###03 Uses descriptive activity names to name the activities in the data set

mn_sd$code <- factor(mn_sd$code, levels = activity[, 1], labels = activity[, 2])


###04 Appropriately labels the data set with descriptive variable names.
names(mn_sd)[2] = "activity"
names(mn_sd)<-gsub("Acc", "Accelerometer", names(mn_sd))
names(mn_sd)<-gsub("Gyro", "Gyroscope", names(mn_sd))
names(mn_sd)<-gsub("BodyBody", "Body", names(mn_sd))
names(mn_sd)<-gsub("Mag", "Magnitude", names(mn_sd))
names(mn_sd)<-gsub("^t", "Time", names(mn_sd))
names(mn_sd)<-gsub("^f", "Frequency", names(mn_sd))
names(mn_sd)<-gsub("tBody", "TimeBody", names(mn_sd))
names(mn_sd)<-gsub("-mean()", "Mean", names(mn_sd), ignore.case = TRUE)
names(mn_sd)<-gsub("-std()", "STD", names(mn_sd), ignore.case = TRUE)
names(mn_sd)<-gsub("-freq()", "Frequency", names(mn_sd), ignore.case = TRUE)
names(mn_sd)<-gsub("angle", "Angle", names(mn_sd))
names(mn_sd)<-gsub("gravity", "Gravity", names(mn_sd))
###05 From the data set in step 4, creates a second, independent tidy data set 
###th the average of each variable for each activity and each subject.


x <- c("-mean()")
gsub("-mean\()", "Mean", x)









#namescol <-colnames(MergeDat)
#c <-c(grep("([Mm]ean|std)", namescol), 1,2)
#D <- MergeDat[,c]

x <- c(1,2,2,1)
y <- factor(x, levels = c(1, 2), labels = c("a", "b"))

MergeDat$code <- activity[MergeDat$code, 2] #esto es muy util

