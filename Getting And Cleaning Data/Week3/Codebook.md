---
title: "CodeBook"
author: "Simon S."
date: "Wednesday, May 20, 2015"
---

DISCLAIMER: Some of this information is copy pasted from the original codebook, provided with the original data (file README.TXT and features_info.txt), and as such are the original work of the researchers from the Human Activity Recognition Using Smartphones Dataset Version 1.0, namely:

Jorge L. Reyes-Ortiz, 
Davide Anguita, 
Alessandro Ghio, 
Luca Oneto


The newly created dataset contains the means of all selected datapoints (description found in the initial codebook provided with the data set), separated for each subject (between 1 and 30) and for each activity (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING). The following section highlights the basic nomenclature for the columns.

### The columns are named in this way:

- The data is represented in 2 different domains, time domain (prefixed with t) and frequency domain (prefixed with f).

- Each signal either represents a force on the body (Body) or from gravity (Gravity).

- The reading comes from an accelerometer (ACC) or gyroscope (Gyro)

- There is also two types of information about the data: jerk movements (Jerk) and magnitude (Mag).

- Each column represents either a mean (mean) or standard deviation (std) of their respective variable.

- '-XYZ' is used to denote signals in the X, Y and Z directions.

__The key to reading the column name is then:__

(t/f)(Body/Gravity)(Acc/Gyro)(Jerk and/or Mag).(mean/std/meanFreq)...(X/Y/Z)

__The following data types are thus obtained:__   

"tBodyAcc.mean...X"              
 [4] "tBodyAcc.mean...Y"               "tBodyAcc.mean...Z"               "tBodyAcc.std...X"               
 [7] "tBodyAcc.std...Y"                "tBodyAcc.std...Z"                "tGravityAcc.mean...X"           
[10] "tGravityAcc.mean...Y"            "tGravityAcc.mean...Z"            "tGravityAcc.std...X"            
[13] "tGravityAcc.std...Y"             "tGravityAcc.std...Z"             "tBodyAccJerk.mean...X"          
[16] "tBodyAccJerk.mean...Y"           "tBodyAccJerk.mean...Z"           "tBodyAccJerk.std...X"           
[19] "tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"            "tBodyGyro.mean...X"             
[22] "tBodyGyro.mean...Y"              "tBodyGyro.mean...Z"              "tBodyGyro.std...X"              
[25] "tBodyGyro.std...Y"               "tBodyGyro.std...Z"               "tBodyGyroJerk.mean...X"         
[28] "tBodyGyroJerk.mean...Y"          "tBodyGyroJerk.mean...Z"          "tBodyGyroJerk.std...X"          
[31] "tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"           "tBodyAccMag.mean.."             
[34] "tBodyAccMag.std.."               "tGravityAccMag.mean.."           "tGravityAccMag.std.."           
[37] "tBodyAccJerkMag.mean.."          "tBodyAccJerkMag.std.."           "tBodyGyroMag.mean.."            
[40] "tBodyGyroMag.std.."              "tBodyGyroJerkMag.mean.."         "tBodyGyroJerkMag.std.."         
[43] "fBodyAcc.mean...X"               "fBodyAcc.mean...Y"               "fBodyAcc.mean...Z"              
[46] "fBodyAcc.std...X"                "fBodyAcc.std...Y"                "fBodyAcc.std...Z"               
[49] "fBodyAcc.meanFreq...X"           "fBodyAcc.meanFreq...Y"           "fBodyAcc.meanFreq...Z"          
[52] "fBodyAccJerk.mean...X"           "fBodyAccJerk.mean...Y"           "fBodyAccJerk.mean...Z"          
[55] "fBodyAccJerk.std...X"            "fBodyAccJerk.std...Y"            "fBodyAccJerk.std...Z"           
[58] "fBodyAccJerk.meanFreq...X"       "fBodyAccJerk.meanFreq...Y"       "fBodyAccJerk.meanFreq...Z"      
[61] "fBodyGyro.mean...X"              "fBodyGyro.mean...Y"              "fBodyGyro.mean...Z"             
[64] "fBodyGyro.std...X"               "fBodyGyro.std...Y"               "fBodyGyro.std...Z"              
[67] "fBodyGyro.meanFreq...X"          "fBodyGyro.meanFreq...Y"          "fBodyGyro.meanFreq...Z"         
[70] "fBodyAccMag.mean.."              "fBodyAccMag.std.."               "fBodyAccMag.meanFreq.."         
[73] "fBodyBodyAccJerkMag.mean.."      "fBodyBodyAccJerkMag.std.."       "fBodyBodyAccJerkMag.meanFreq.." 
[76] "fBodyBodyGyroMag.mean.."         "fBodyBodyGyroMag.std.."          "fBodyBodyGyroMag.meanFreq.."    
[79] "fBodyBodyGyroJerkMag.mean.."     "fBodyBodyGyroJerkMag.std.."      "fBodyBodyGyroJerkMag.meanFreq.."