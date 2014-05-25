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
meanstd, or tidy.

The full dataset contains all the training and test data, which have been 
combined into one dataset from the original individual training and test data
files. The dataset contains the subject identification number in the first 
column, the activity name in the second column, and all of the variables in the 
subsequent columns. The variables have been labeled using the feature list.

The meanstd dataset contains only the means and standard deviations for each
measurement. It is a subset of the full dataset, restricted only to those 
variables which describe a mean or standard deviation, e.g. those that contain
"mean" or "std" in the variable description.

The tidy dataset contains the average of each variable for each activity and 
subject. It is built using the full dataset, which has been melted and recast.
There is one row for each combination of unique subject and activity, and the
columns reflect the average values for each variable for that particular 
combination of subject and activity.

If the type of dataset is not specified, the full dataset wll be returned.