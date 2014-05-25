## Information about run_analysis.R

### Description

Use run_analysis.R can be used against the UCI HAR Dataset to perform the following functions:

* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement. 
* Use descriptive activity names to name the activities in the data set
* Appropriately label the data set with descriptive activity names. 
* Creates a tidy data set with the average of each variable for each activity and each subject.

### Usage

run_analysis(output = 'full')

### Arguments

output: takes 'full', 'meanstd', or 'tidy'.

### Details

This function takes as an argument the type of dataset to return: full, 
meanstd, or tidy. The full dataset contains all the training and test data. 
The meanstd dataset contains only the means and standard deviations for each
measurement. The tidy dataset contains the average of each variable for each
activity and subject. If the type of dataset is not specified, the full 
dataset wll be returned.