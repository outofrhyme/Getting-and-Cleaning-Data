## This function takes as an argument the type of dataset to return: full, 
## meanstd, or tidy. The full dataset contains all the training and test data. 
## The meanstd dataset contains only the means and standard deviations for each
## measurement. The tidy dataset contains the average of each variable for each
## activity and subject. If the type of dataset is not specified, the full 
## dataset wll be returned.

run_analysis <- function(output = 'full') {
        
        ## Read activity and feature labels into vectors
        
        activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')
        features <- read.table('UCI HAR Dataset/features.txt')
        
        ## Clean up the punctuation in the features and format column headers
        
        features <- c('subject','activity',as.character(features[,2]))
        features <- gsub("[[:punct:]]", "", features)
        
        ## Read all test data into vectors and merge activity labels
        
        y_test <- read.table('UCI HAR Dataset/test/y_test.txt')
        x_test <- read.table('UCI HAR Dataset/test/X_test.txt')
        subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt')
        activity_test <- merge(y_test, activity_labels)
        
        ## Build test data frame
        
        test <- cbind(subject_test, activity_test[,2], x_test)
        colnames(test) <- features
      
        ## Read all training data into vectors and merge activity labels
        
        y_train <- read.table('UCI HAR Dataset/train/y_train.txt')
        x_train <- read.table('UCI HAR Dataset/train/X_train.txt')
        subject_train <- read.table('UCI HAR Dataset/train/subject_train.txt')
        activity_train <- merge(y_train, activity_labels)
        
        ## Build train data frame
        
        train <- cbind(subject_train, activity_train[,2], x_train)
        colnames(train) <- features
        
        ## Join test and train data frames to merge test and training data sets
        
        data <- rbind(test,train)
        
        if(output == 'full') {
                
                ## Return full data set
                data
        }
        
        else if(output == 'meanstd'){
                ## Subset to columns containing means and standard deviations only
                
                meanstd_cols <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 
                                  227:228, 240:241, 253:254, 266:271, 345:350, 424:429, 
                                  503:504, 516:517, 529:530, 542:543)
                meanstd_cols <- c(1:2, (meanstd_cols + 2))
                meanstd <- data[,meanstd_cols]
                
                ## Return meanstd data set
                meanstd
        }
        
        else if(output == 'tidy'){
                ## Create tidy data set with the average of each variable for each 
                ## activity and each subject.
               
                require('reshape2')
                tidymelt <- melt(data,id.vars = c("subject", "activity"))
                tidy <- dcast(tidymelt, subject + activity ~ variable, mean)
                
                ## Return tidy data set
                tidy
                
        }
        
        else {
                print('Please choose full, meanstd or tidy')
        }
        
}        