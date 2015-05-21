library("plyr")
library("dplyr")

# Load data, and ## 4. Properly label data with descriptive variable names

features <- read.table("./UCI HAR Dataset/features.txt")

train_x <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features[,2])
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "Activity")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "Subject ID")

test_x <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features[,2])
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "Activity")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "Subject ID")

## 1. Merge training and test sets together

x_merged <- rbind(train_x, test_x, deparse.level=1)
y_merged <- rbind(train_y, test_y, deparse.level=1)
ind_merged<- rbind(subject_train, subject_test, deparse.level=1)
merged <- cbind(ind_merged,y_merged,x_merged)

## 2. Extract mean and std dev for each measurements

# ID of columns with mean and std, no "f...." data since it has been modified
cols = c(-1, 0, 1:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266:271, 294:296, 345:350, 373:375, 424:429, 452:454, 503, 504, 513, 516, 517, 526, 529, 530, 539, 542, 543, 552)

cols = cols+2

mean_std <- data.frame(merged[cols])

## 3. Rename activities using descriptive activity names

for (i in 1:dim(mean_std)[1]){
    if (mean_std[i,2] == 1){
        mean_std[i,2] <- "WALKING"
    } else if(mean_std[i,2] == 2){
        mean_std[i,2] <- "WALKING UP"
    } else if(mean_std[i,2] == 3){
        mean_std[i,2] <- "WALKING DOWN"
    } else if(mean_std[i,2] == 4){
        mean_std[i,2] <- "SITTING"
    } else if(mean_std[i,2] == 5){
        mean_std[i,2] <- "STANDING"
    } else {
        mean_std[i,2] <- "LAYING"
    }
}

## 5. Using data from previous step, create second, tidy dataset containing average of each variable, for each activity and each subject

#create factors for data

tidy <- ddply(mean_std, .(Subject.ID, Activity), numcolwise(mean) )

write.table(tidy, file="Step5.txt", row.names=FALSE)
