==================================================================
Cleaning the Human Activity Recognition Using Smartphones Dataset
Coursera Course : Getting and Cleaning Data
==================================================================

Author : Min Hyung (Daniel) Kang
Date : August 20th, 2015

==================================================================

Summary :

This script loads the dataset of human activity recognied using smartphones.

Description of data can be found from following url : 
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

==================================================================

Assumptions : 

	- User has up-to-date version of R
	- User has downloaded the dataset, extracted all the data
	- User does not alter the structure of the dataset after extraction
	- User runs the script in the same directory as the dataset
		(same directory as the folders "test" and "train")
	- User has downloaded the "plyr" package


==================================================================

Description :

There should be three files within this repository
	1. run_analysis.R
	2. CodeBook.md
	3. README.md (current file)

User should be able to run the script as described in the assumption, and will obtain
a file "neat_data.txt" in the same directory. This file will contain the cleaned up data that combines
all the test and training datasets, grouped by activities and subjects, then averaged.
Only the attributes that are means or standard deviations were selected from the original dataset.

The more detailed step is as follows : 
The script will load all the datasets within the directory. It will first combine all the training sets,
and then combine all the testing sets. It subsets each dataset, selecting only the attributes of interest
(attributes that are either average or std. deviations)
Then it combines both sets, replaces the activity indices with their
corresponding names. It also renames all the shortened words with longer words in the attributes: 
(Mag -> Magnitude; Acc -> Acceleration; Freq -> Frequency; std -> st.dev)
It averages each value for each activity/subject group, and save the result to a text file called "./neat_set.txt"
The user can also still access the total combined dataset (before averaged) from datatable named "total_set"



The CodeBook describes the variables, the data, and transformations done to the data.



