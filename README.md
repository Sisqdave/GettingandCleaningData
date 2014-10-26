GettingandCleaningData Course Project
======================

The script run_analysis.R does the following

## Installs the packages that we will need
library(dplyr)
library(tidyr)
library(reshape2)
Reads the data from the working directory. The files below must be in the working directory.
subject_test.txt, 
subject_train.tx, 
activity_labels.txt, 
X_test.txt, 
X_train.txt, 
y_test.txt, 
y_train.txt, 
features.txt, 

The script then tidies up the variables(column names).

Combines the test data with the training data.  
Combines the test and training subject data.  
Combines the test and training activity data.  
Removes duplicate column names that do not have mean or standard deviation measurements.  
Adds the variables to the column names.  
Combines the activity codes and the subject codes to the data.frame.  
Changes our activity codes to named activities.   
Selects only the Data containg mean and standard deviation data.  
Reshapes the data.  
Writes the tidy data to the step5.txt file.  


