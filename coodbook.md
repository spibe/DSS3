<h1>Description of the variables ot the tidy data set</h1>
There are 69 variables in the tidy_data.txt file. They correspond to the mean of each activity and each subject.

The variables are called:
"activitycode" "tBodyAccmeanX" "tBodyAccmeanY" "tBodyAccmeanZ" "tBodyAccstdX" "tBodyAccstdY" "tBodyAccstdZ" "tGravityAccmeanX" "tGravityAccmeanY" "tGravityAccmeanZ" "tGravityAccstdX" "tGravityAccstdY" "tGravityAccstdZ" "tBodyAccJerkmeanX" "tBodyAccJerkmeanY" "tBodyAccJerkmeanZ" "tBodyAccJerkstdX" "tBodyAccJerkstdY" "tBodyAccJerkstdZ" "tBodyGyromeanX" "tBodyGyromeanY" "tBodyGyromeanZ" "tBodyGyrostdX" "tBodyGyrostdY" "tBodyGyrostdZ" "tBodyGyroJerkmeanX" "tBodyGyroJerkmeanY" "tBodyGyroJerkmeanZ" "tBodyGyroJerkstdX" "tBodyGyroJerkstdY" "tBodyGyroJerkstdZ" "tBodyAccMagmean" "tBodyAccMagstd" "tGravityAccMagmean" "tGravityAccMagstd" "tBodyAccJerkMagmean" "tBodyAccJerkMagstd" "tBodyGyroMagmean" "tBodyGyroMagstd" "tBodyGyroJerkMagmean" "tBodyGyroJerkMagstd" "fBodyAccmeanX" "fBodyAccmeanY" "fBodyAccmeanZ" "fBodyAccstdX" "fBodyAccstdY" "fBodyAccstdZ" "fBodyAccJerkmeanX" "fBodyAccJerkmeanY" "fBodyAccJerkmeanZ" "fBodyAccJerkstdX" "fBodyAccJerkstdY" "fBodyAccJerkstdZ" "fBodyGyromeanX" "fBodyGyromeanY" "fBodyGyromeanZ" "fBodyGyrostdX" "fBodyGyrostdY" "fBodyGyrostdZ" "fBodyAccMagmean" "fBodyAccMagstd" "fBodyBodyAccJerkMagmean" "fBodyBodyAccJerkMagstd" "fBodyBodyGyroMagmean" "fBodyBodyGyroMagstd" "fBodyBodyGyroJerkMagmean" "fBodyBodyGyroJerkMagstd" "subjectnumber" "activitytext"


<h1>Metadata of the raw data set </h1>

<h2>Data Set Information (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)</h2>

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]

An updated version of this dataset can be found at [Web Link]. It includes labels of postural transitions between activities and also the full raw inertial signals instead of the ones pre-processed into windows.


Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.









