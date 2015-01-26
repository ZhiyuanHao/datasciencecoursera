##结果文本名称：
second_data_set.txt

##说明：

###1.处理过程
详见README.md

###2.原始数据

*原始数据来源
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

*命名解释
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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

###3.生成数据说明
该数据为66行6列的dataframe格式数据
每一行代表使用传感器测量的一种数据
每一列代表一种activity
中间的数值代表该种activity该种测量的平均值。

*其中结果中行名称分别为
 [1] "tBodyAcc.mean...X"           "tBodyAcc.mean...Y"           "tBodyAcc.mean...Z"          
 [4] "tBodyAcc.std...X"            "tBodyAcc.std...Y"            "tBodyAcc.std...Z"           
 [7] "tGravityAcc.mean...X"        "tGravityAcc.mean...Y"        "tGravityAcc.mean...Z"       
[10] "tGravityAcc.std...X"         "tGravityAcc.std...Y"         "tGravityAcc.std...Z"        
[13] "tBodyAccJerk.mean...X"       "tBodyAccJerk.mean...Y"       "tBodyAccJerk.mean...Z"      
[16] "tBodyAccJerk.std...X"        "tBodyAccJerk.std...Y"        "tBodyAccJerk.std...Z"       
[19] "tBodyGyro.mean...X"          "tBodyGyro.mean...Y"          "tBodyGyro.mean...Z"         
[22] "tBodyGyro.std...X"           "tBodyGyro.std...Y"           "tBodyGyro.std...Z"          
[25] "tBodyGyroJerk.mean...X"      "tBodyGyroJerk.mean...Y"      "tBodyGyroJerk.mean...Z"     
[28] "tBodyGyroJerk.std...X"       "tBodyGyroJerk.std...Y"       "tBodyGyroJerk.std...Z"      
[31] "tBodyAccMag.mean.."          "tBodyAccMag.std.."           "tGravityAccMag.mean.."      
[34] "tGravityAccMag.std.."        "tBodyAccJerkMag.mean.."      "tBodyAccJerkMag.std.."      
[37] "tBodyGyroMag.mean.."         "tBodyGyroMag.std.."          "tBodyGyroJerkMag.mean.."    
[40] "tBodyGyroJerkMag.std.."      "fBodyAcc.mean...X"           "fBodyAcc.mean...Y"          
[43] "fBodyAcc.mean...Z"           "fBodyAcc.std...X"            "fBodyAcc.std...Y"           
[46] "fBodyAcc.std...Z"            "fBodyAccJerk.mean...X"       "fBodyAccJerk.mean...Y"      
[49] "fBodyAccJerk.mean...Z"       "fBodyAccJerk.std...X"        "fBodyAccJerk.std...Y"       
[52] "fBodyAccJerk.std...Z"        "fBodyGyro.mean...X"          "fBodyGyro.mean...Y"         
[55] "fBodyGyro.mean...Z"          "fBodyGyro.std...X"           "fBodyGyro.std...Y"          
[58] "fBodyGyro.std...Z"           "fBodyAccMag.mean.."          "fBodyAccMag.std.."          
[61] "fBodyBodyAccJerkMag.mean.."  "fBodyBodyAccJerkMag.std.."   "fBodyBodyGyroMag.mean.."    
[64] "fBodyBodyGyroMag.std.."      "fBodyBodyGyroJerkMag.mean.." "fBodyBodyGyroJerkMag.std.." 

*其中结果列名称分别为
[1] "WALKING"            "WALKING_UPSTAIRS"   "WALKING_DOWNSTAIRS" "SITTING"           
[5] "STANDING"           "LAYING"