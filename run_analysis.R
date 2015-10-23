#Coursera Data Specialisation: Getting and Cleaning Data
#CourseProject
#Name of the script must be: run_analysis.R
#In the train dataset are 7352 rows
# 
#In the test dataset are 2947 rows
library(dplyr)

#A-1a Load the train dataset:
X_train <- read.csv("UCI HAR Dataset/train/X_train.txt",header = FALSE, sep = "")

#A-1b Load the train dataset activity code:
y_train <- read.csv("UCI HAR Dataset/train/y_train.txt",header = FALSE)
names(y_train) <- "activitycode"

#A-1c Load the train dataset subject number:
subject_train <- read.csv("UCI HAR Dataset/train/subject_train.txt",header = FALSE)
names(subject_train) <- "subjectnumber"

#A-1d Load the activity_labels Code:
activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt",header = FALSE, sep="")

#A-1e Load the features (column) names
features_txt <- read.csv("UCI HAR Dataset/features.txt",header = FALSE,sep="")
features_names <- features_txt[2]
names(X_train) <- features_names[,1]


#A-2 Cleaning the train datasets:

#A-3 Merging (cbind) y_train, (cbind) subject_train and activity_labels to the X_train dataset
X_train_w_activity_w_subject <- cbind(X_train,y_train,subject_train) 


#B-1a Load the test dataset:
X_test <- read.csv("UCI HAR Dataset/test/X_test.txt",header = FALSE, sep = "")
names(X_test) <- features_names[,1]

#B-1b Load the test dataset activity code:
y_test <- read.csv("UCI HAR Dataset/test/y_test.txt",header = FALSE)
names(y_test) <- "activitycode"

#B-1c Load the test dataset subject number:
subject_test <- read.csv("UCI HAR Dataset/test/subject_test.txt",header = FALSE)
names(subject_test) <- "subjectnumber"




#B-2 Cleaning the test datasets:


#B-3 Merging (cbind) y_test, (cbind) subject_test and activity_labels to the X_train dataset
X_test_w_activity_w_subject <- cbind(X_test,y_test,subject_test) 


#C-1 Merge the train and the test datasets (row based (rbind) -> union all in SQL language)
X_train_X_test_combined <- rbind(X_train_w_activity_w_subject,X_test_w_activity_w_subject)

X_train_X_test_combined_dplyr = tbl_df(X_train_X_test_combined)



#C-2 Create subset with only mean and standard deviate measures

#Finds all names with "mean" or "std" in it
#returns indices vector than can be used to subset / select from original data.table 
mean_and_std_only <-X_train_X_test_combined_dplyr[,grepl("(mean\\(\\)|std\\(\\)|activitycode|subjectnumber)",names(X_train_X_test_combined_dplyr))]    

#C-3 Name the activities
all_w_named_activities <- merge(mean_and_std_only,activity_labels,by.x = "activitycode", by.y = "V1",all = TRUE)

#C-4 Label the variables with descriptive variable names




#D-5 Create tidy data set with average of each variable for each activity and each subject
agg_data <- aggregate(all_w_named_activities[,c(-69)],by = list(activity = all_w_named_activities$activitycode,
                                                         subject = all_w_named_activities$subjectnumber), FUN = mean, na.rm = TRUE)

agg_data <- agg_data[,c(-1,-2)]

final_data <- merge(agg_data,activity_labels,by.x = "activitycode", by.y = "V1", all = TRUE)
col_name <- colnames(final_data)
col_name <- gsub("\\()|\\-","", col_name)
col_name <- gsub("V2","activitytext", col_name)
colnames(final_data) <- col_name

#Remove artefacts
rm(X_train,X_test,y_train,y_test,features_txt,X_train_w_activity_w_subject,X_test_w_activity_w_subject,X_train_X_test_combined)

write.table(x = final_data, file = "tidy_data.txt",row.names = FALSE)


