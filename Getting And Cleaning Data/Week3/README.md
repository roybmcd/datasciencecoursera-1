---
title: "README for run_analysis"
author: "Simon S."
date: "Tuesday, May 19, 2015"
---

The code in run_analysis.R performs the expected steps of the course project, but not exactly in the order they are exposed in. The order is as follows:

- 4. Appropriately label the data set with descriptive variable names. This is done as the data is loaded.
- 1. Merge the training and the test sets to create one data set.
- 2. Extract only the measurements on the mean and standard deviation for each measurement.
- 3. Use descriptive activity names to name the activities in the data set.
- 5. From the mean and standard deviation data set, creates a second, independent tidy data set with the average of each variable for each activity and each subject (labelled "tidy").

Number 4 is done in the beginning during the load data phase, since the read.table() function has a parameter to name columns as they are loaded.

Regarding number 2, it was decided to keep the frequency averages, but not the angle() mean variables, since they were obtained using a signal window sampling method, which I considered to be too manipulated for a clean data set.

## Step by Step

Lines 4 to 14 load the appropriate data, assuming the zip file was unzipped in the root folder.

Lines 18 to 21 merge the data into one coherent set.

Lines 26 to 28 contains the column ID for all the accepted columns containing mean and standard deviation information, and formats them properly for our current table.

Line 30 reduces the dataset to it's smaller form.

Lines 34 to 48 replace the activity numbers with their actual names.

Line 54 creates the tidy data set that complies with the requirements at Step 5.

Line 56 writes the previously created data set to a .txt file names Step5.


