The data can be found at the following location:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Information on the experments and data collection can be found in the readme.txt document which can be found in the zip file above.

Test files:
The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The test and train files were merged together and matched with the subject data(subject-test.txt and subject.train.txt) and the activity data(y_test and y_train).

Duplicate data that did not have mean or standard deviation data was removed from the data frame.

The variable names(feature.txt) were then converted to tidy data by lengthening abbreviations and removing non alpha numeric characters. 
The data was then sorted by subject and activity type and the mean was calculated
There were thirty subjects

Activity types were 
LAYING           
SITTING            
STANDING          
WALKING           
WALKING_DOWNSTAIRS
WALKING_UPSTAIRS  


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were gathered from the data were 

mean: Mean value
std: Standard deviation

The variables from the files were expanded to the following to insure tidy data
"subject"
"activity"                                                 
"timedomainsignalbodyaccelerometermeanx"
"timedomainsignalbodyaccelerometermeany"                   
"timedomainsignalbodyaccelerometermeanz"
"timedomainsignalgravityaccelerometermeanx"                
"timedomainsignalgravityaccelerometermeany"
"timedomainsignalgravityaccelerometermeanz"                
"timedomainsignalbodyaccelerometerjerkmeanx"
"timedomainsignalbodyaccelerometerjerkmeany"               
"timedomainsignalbodyaccelerometerjerkmeanz"
"timedomainsignalbodygyroscopemeanx"                       
"timedomainsignalbodygyroscopemeany"
"timedomainsignalbodygyroscopemeanz"                       
"timedomainsignalbodygyroscopejerkmeanx"
"timedomainsignalbodygyroscopejerkmeany"                   
"timedomainsignalbodygyroscopejerkmeanz"
"timedomainsignalbodyaccelerometermagmean"                 
"timedomainsignalgravityaccelerometermagmean"
"timedomainsignalbodyaccelerometerjerkmagmean"             
"timedomainsignalbodygyroscopemagmean"
"timedomainsignalbodygyroscopejerkmagmean"                 
"fastfouriertransformaccelerometermeanx"
"fastfouriertransformaccelerometermeany"                   
"fastfouriertransformaccelerometermeanz"
"fastfouriertransformaccelerometermeanfreqx"               
"fastfouriertransformaccelerometermeanfreqy"
"fastfouriertransformaccelerometermeanfreqz"               
"fastfouriertransformaccelerometerjerkmeanx"
"fastfouriertransformaccelerometerjerkmeany"               
"fastfouriertransformaccelerometerjerkmeanz"
"fastfouriertransformaccelerometerjerkmeanfreqx"           
"fastfouriertransformaccelerometerjerkmeanfreqy"
"fastfouriertransformaccelerometerjerkmeanfreqz"           
"fastfouriertransformgyroscopemeanx"
"fastfouriertransformgyroscopemeany"                       
"fastfouriertransformgyroscopemeanz"
"fastfouriertransformgyroscopemeanfreqx"                   
"fastfouriertransformgyroscopemeanfreqy"
"fastfouriertransformgyroscopemeanfreqz"                   
"fastfouriertransformaccelerometermagmean"
"fastfouriertransformaccelerometermagmeanfreq"             
"fastfouriertransformbodyaccelerometerjerkmagmean"
"fastfouriertransformbodyaccelerometerjerkmagmeanfreq"     
"fastfouriertransformbodygyroscopemagmean"
"fastfouriertransformbodygyroscopemagmeanfreq"             
"fastfouriertransformbodygyroscopejerkmagmean"
"fastfouriertransformbodygyroscopejerkmagmeanfreq"         
"angletimedomainsignalbodyaccelerometermeangravity"
"angletimedomainsignalbodyaccelerometerjerkmeangravitymean"
"angletimedomainsignalbodygyroscopemeangravitymean"
"angletimedomainsignalbodygyroscopejerkmeangravitymean"    
"anglexgravitymean"
"angleygravitymean"                                        
"anglezgravitymean"                      




