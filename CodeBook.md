CodeBook for run_analysis.R
==========================================================================================
Name : Min Hyung (Daniel) Kang
Date : August 20th, 2015
Coursera Course "Getting and Cleaning Data"

==========================================================================================

Description of total dataset can be found from following url : 
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

==========================================================================================
Summary of data : 
	-Subject : a group of 30 volunteers aged from 19-48 years.
	-Activities : 6 types (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
	-Attributes : 86 attributes selected out of 561
		=>Only the attributes that talked about mean or standard deviations of 
		  attributes were considered. They were subsetted by searching for strings
		  with substring "mean" or "std", case independent
		=>Attribute values are normalized and bounded by [-1,1]
	-Data is ordered first by activity, then by subject


==========================================================================================
Format of data : (180 x 88)

Activity  Subject  attribute1  attribute2  attribute3 .....
Laying	     1       value        value      value    ....
Laying	     2       value        value      value    ....
Laying	     3       value        value      value    ....
                      ....
Sitting	     1       value        value      value    ....
Sitting	     2       value        value      value    ....
		      .....


==========================================================================================
Summary of attributes : 

(Text from features_info.txt)
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using 
another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


==========================================================================================


Accelerations units are standard gravity units : g
Angular velocity units are : rad/s

Total list of attributes : 
	
 [1] "Activity"                                          
 [2] "Subject"                                           
 [3] "tBodyAcceleration-mean()-X"                        
 [4] "tBodyAcceleration-mean()-Y"                        
 [5] "tBodyAcceleration-mean()-Z"                        
 [6] "tBodyAcceleration-st.dev()-X"                      
 [7] "tBodyAcceleration-st.dev()-Y"                      
 [8] "tBodyAcceleration-st.dev()-Z"                      
 [9] "tGravityAcceleration-mean()-X"                     
[10] "tGravityAcceleration-mean()-Y"                     
[11] "tGravityAcceleration-mean()-Z"                     
[12] "tGravityAcceleration-st.dev()-X"                   
[13] "tGravityAcceleration-st.dev()-Y"                   
[14] "tGravityAcceleration-st.dev()-Z"                   
[15] "tBodyAccelerationJerk-mean()-X"                    
[16] "tBodyAccelerationJerk-mean()-Y"                    
[17] "tBodyAccelerationJerk-mean()-Z"                    
[18] "tBodyAccelerationJerk-st.dev()-X"                  
[19] "tBodyAccelerationJerk-st.dev()-Y"                  
[20] "tBodyAccelerationJerk-st.dev()-Z"                  
[21] "tBodyGyro-mean()-X"                                
[22] "tBodyGyro-mean()-Y"                                
[23] "tBodyGyro-mean()-Z"                                
[24] "tBodyGyro-st.dev()-X"                              
[25] "tBodyGyro-st.dev()-Y"                              
[26] "tBodyGyro-st.dev()-Z"                              
[27] "tBodyGyroJerk-mean()-X"                            
[28] "tBodyGyroJerk-mean()-Y"                            
[29] "tBodyGyroJerk-mean()-Z"                            
[30] "tBodyGyroJerk-st.dev()-X"                          
[31] "tBodyGyroJerk-st.dev()-Y"                          
[32] "tBodyGyroJerk-st.dev()-Z"                          
[33] "tBodyAccelerationMagnitude-mean()"                 
[34] "tBodyAccelerationMagnitude-st.dev()"               
[35] "tGravityAccelerationMagnitude-mean()"              
[36] "tGravityAccelerationMagnitude-st.dev()"            
[37] "tBodyAccelerationJerkMagnitude-mean()"             
[38] "tBodyAccelerationJerkMagnitude-st.dev()"           
[39] "tBodyGyroMagnitude-mean()"                         
[40] "tBodyGyroMagnitude-st.dev()"                       
[41] "tBodyGyroJerkMagnitude-mean()"                     
[42] "tBodyGyroJerkMagnitude-st.dev()"                   
[43] "fBodyAcceleration-mean()-X"                        
[44] "fBodyAcceleration-mean()-Y"                        
[45] "fBodyAcceleration-mean()-Z"                        
[46] "fBodyAcceleration-st.dev()-X"                      
[47] "fBodyAcceleration-st.dev()-Y"                      
[48] "fBodyAcceleration-st.dev()-Z"                      
[49] "fBodyAcceleration-meanFrequency()-X"               
[50] "fBodyAcceleration-meanFrequency()-Y"               
[51] "fBodyAcceleration-meanFrequency()-Z"               
[52] "fBodyAccelerationJerk-mean()-X"                    
[53] "fBodyAccelerationJerk-mean()-Y"                    
[54] "fBodyAccelerationJerk-mean()-Z"                    
[55] "fBodyAccelerationJerk-st.dev()-X"                  
[56] "fBodyAccelerationJerk-st.dev()-Y"                  
[57] "fBodyAccelerationJerk-st.dev()-Z"                  
[58] "fBodyAccelerationJerk-meanFrequency()-X"           
[59] "fBodyAccelerationJerk-meanFrequency()-Y"           
[60] "fBodyAccelerationJerk-meanFrequency()-Z"           
[61] "fBodyGyro-mean()-X"                                
[62] "fBodyGyro-mean()-Y"                                
[63] "fBodyGyro-mean()-Z"                                
[64] "fBodyGyro-st.dev()-X"                              
[65] "fBodyGyro-st.dev()-Y"                              
[66] "fBodyGyro-st.dev()-Z"                              
[67] "fBodyGyro-meanFrequency()-X"                       
[68] "fBodyGyro-meanFrequency()-Y"                       
[69] "fBodyGyro-meanFrequency()-Z"                       
[70] "fBodyAccelerationMagnitude-mean()"                 
[71] "fBodyAccelerationMagnitude-st.dev()"               
[72] "fBodyAccelerationMagnitude-meanFrequency()"        
[73] "fBodyBodyAccelerationJerkMagnitude-mean()"         
[74] "fBodyBodyAccelerationJerkMagnitude-st.dev()"       
[75] "fBodyBodyAccelerationJerkMagnitude-meanFrequency()"
[76] "fBodyBodyGyroMagnitude-mean()"                     
[77] "fBodyBodyGyroMagnitude-st.dev()"                   
[78] "fBodyBodyGyroMagnitude-meanFrequency()"            
[79] "fBodyBodyGyroJerkMagnitude-mean()"                 
[80] "fBodyBodyGyroJerkMagnitude-st.dev()"               
[81] "fBodyBodyGyroJerkMagnitude-meanFrequency()"        
[82] "angle(tBodyAccelerationMean,gravity)"              
[83] "angle(tBodyAccelerationJerkMean),gravityMean)"     
[84] "angle(tBodyGyroMean,gravityMean)"                  
[85] "angle(tBodyGyroJerkMean,gravityMean)"              
[86] "angle(X,gravityMean)"                              
[87] "angle(Y,gravityMean)"                              
[88] "angle(Z,gravityMean)"  

==========================================================================================
Variables used in run_analysis.r (in order of appearance)

labels : labels for activities (6 x 2)
features : all of attribute names (561 x 2)
keyword : logical vector that represents which attributes we are interested in (list of 561)
selectedfeatures : the attribute names that we are interested in (list of 86)

****For training Set****
subject_train : sequence of 30 subjects(7352 x 1)
y_train : sequence of activities (7352 x 1)
x_train : dataset of selected features (7352 x 86)
train_set : combined set of training datasets (7352 x 88)

****For testing Set****
subject_test : sequence of 30 subjects(2947 x 1)
y_test : sequence of activities (2947 x 1)
x_test : dataset of selected features (2947 x 86)
test_set : combined set of testing datasets (2947 x 88)

****Combined dataset****
total_set : combined set of training and testing sets (10299 x 88)
names : names of the changed attribute names (86)

****Final neat dataset****
neat_set : final resultset, with each attribute averaged by subject and activity

==========================================================================================
Data manipulation 

We first load the information regarding the activities and attributes.
We select the attributes of interest using grepl.

We then read in datafiles for training/testing sets, combine each tables to make one table for each case (training/testing)
Two tables are combined so that we have all the cases in one table.
It is then merged with the activity names to label the activities.

After we change the names of attributes to make it more understandable, we replace all the column names with the new names.
Using plyr library, we get average of each attribute per subject/activity pair, and print out the result.


==========================================================================================

