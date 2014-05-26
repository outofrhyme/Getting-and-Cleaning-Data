## Codebook for tidy.txt

### Description

The dataset tidy.txt was created using run_analysis(tidy) against the UCI HAR 
Dataset. It is a clean set containing the average values for each variable for 
each subject and activity pair, across both the training and test data.

The tidy dataset contains the average of each variable for each activity and 
subject. It is built using the full dataset, which has been melted and recast.
There is one row for each combination of unique subject and activity, and the
columns reflect the average values for each variable for that particular 
combination of subject and activity.

### Details

The dataset tidy.txt was created using run_analysis.R. The following steps were
performed against the original data set:

* Read activity and feature labels into vectors.
* Stripped the punctuation in the features to make them more readable using gsub, and formatted the column headers to include label names for the "subject" and "activity" columns.
* Read all test and training data into vectors, and merged the activity labels to create human-readable labels for each activity.
* Built and bound the test and training data frames together using the vectors created in the previous step.
* Used melt and dcast against the aggregate data set to create a tidy data set with the average of each variable for each activity and each subject.

Please see the [README for run_analysis](https://github.com/outofrhyme/Getting-and-Cleaning-Data/blob/master/README.md) for further details on the script that produced the tidy dataset, and please see the [README for the UCI HAR Dataset](https://github.com/outofrhyme/Getting-and-Cleaning-Data/blob/master/UCI%20HAR%20Dataset/README.txt) for a detailed description of the variables.