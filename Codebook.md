## Codebook for tidy.txt

### Description

The dataset tidy.txt was created using the UCI HAR Dataset. It is a clean set
containing the average values for each variable for each subject and activity
pair, across both the training and test data.

### Details

The dataset tidy.txt was created using run_analysis.R. The following steps were
performed against the original data set:

* Read activity and feature labels into vectors.
* Cleaned up the punctuation in the features and formatted the column headers using gsub.
* Read all test and training data into vectors and merged activity labels to create human-readable labels for each activity.
* Built and bound the test and training data frames together using the vectors created in the previous step.
* Used melt and dcast against the aggregate data set to create a tidy data set with the average of each variable for each activity and each subject.