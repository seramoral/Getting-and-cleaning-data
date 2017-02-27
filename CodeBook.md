# Getting and cleaning Process

In this document we will explain the steps that we have carried out so as to get and clean the data, as well as the description of the data generated and the variables contained in the final data set.

## Steps of the getting and cleaning data process

We have carried out the next steps in order to create the tidy data set:

1. **Get** the data set
	1. Fix the directory where the data set will be allocated
	2. Download the data set from the Web
	3. read the data from the files **X**, **Y** and **subject**, in train and in test.
2. **Merge** the train and test data sets (X,Y and subject) in three single data set, one for X, another for Y and another for subject 

3. Extract only the measurements on the **mean** and **standard deviation** for each measurement.
	1. Get the features names from the file labels.txt
	2. Use a regular expresion to obtain the column indices corresponding to the desired columns.
	3. Extract from the X data set the columns corresponding to the index get in the previous step.
	

4. Give **descriptive names** to features and activities 
	
	1. Name the columns of the X data set using these features names obtained
	2. Get the activities names from the file activities_labels.txt
	3. Change the numbers in Y data set by their corresponding activities names  

5. **Create a tidy data set** with the average of each variable for each activity and each subject

	1. **Join** the X, Y and subject subsets in a single data set
	2. Using this data set we **create** a new data set with the mean for each subject and each activity
	3. **Write** the new data set in the defintive file **tidy_set.txt** 


## Final file: tidy_set.txt

This file contains one row for each subject and each activity. Each row contains, besides to the activity and the subject, the averge of the mean and standard deviation for each measurement.     

## Measurements and activities in the data set

### Measurements


1. tBodyAccX
2. tBodyAccY
3. tBodyAccZ
7. tGravityAccX
8. tGravityAccY
9. tGravityAccZ
13. tBodyAccJerkX
14. tBodyAccJerkY
15. tBodyAccJerkZ
19. tBodyGyroX
20. tBodyGyroY
21. tBodyGyroZ
25. tBodyGyroJerkX
26. tBodyGyroJerkY
27. tBodyGyroJerkZ
31. tBodyAccMagMean
33. tGravityAccMag
35. tBodyAccJerkMag
37. tBodyGyroMag
38. tBodyGyroJerkMag
39. fBodyAccX
40. fBodyAccY
41. fBodyAccZ
42. fBodyAccFreqX
43. fBodyAccFreqY
44. fBodyAccFreqZ
45. fBodyAccJerkX
46. fBodyAccJerkY
47. fBodyAccJerkZ
48. fBodyAccJerkFreqX
49. fBodyAccJerkFreqY
50. fBodyAccJerkFreqZ
51. fBodyGyroX
52. fBodyGyroY
53. fBodyGyroZ
54. fBodyGyroFreqX
55. fBodyGyroFreqY
56. fBodyGyroFreqZ
57. fBodyAccMag
58. fBodyAccMagFreq
59. fBodyBodyAccJerkMag
1.  fBodyBodyAccJerkMagFreq
2.  fBodyBodyGyroMag
1.  fBodyBodyGyroMagFreq
1.  fBodyBodyGyroJerkMag
1.  fBodyBodyGyroJerkMagFreq

### Activities


1. WALKING 
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING 
5. STANDING 
6. LAYING 



 