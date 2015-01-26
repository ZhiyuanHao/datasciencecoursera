##结果文本名称：
second_data_set.txt

##说明：

###1.处理过程
详见README.md

###2.中间变量说明
features：读取features.txt，其中记录测量特征的名称
subject_train：读取subject_train.txt
y_train：读取y_train.txt
X_train：读取X_train.txt，并将features名称存入列名称
subject_test：读取subject_test.txt
y_test：读取y_test.txt
X_test：读取X_test.txt，并将features名称存入列名称
subject：将subject_train和subject_test合并到一起
y：将y_train和y_test合并到一起
X：将X_train和X_test合并到一起
col_mean_std：过滤原测量特征中带有mean()或者std()的特征的列
X_mean_std：存储原数据经过上边列过滤后的数据（66列）
activity_labels：读取activity_labels.txt文件，其中记录activity的号码和名称的对应关系
y_activity_names：存储将y中activity由号码转变为名称后的标记数据
data_set：将过滤完后的特征，转换完的标记，和subject信息存在一起
melt_data：融合数据信息，将原来传感器中的特征作为测量信息展开，要求全排列的两列作为id
second_data_set：要求的最后结果，同一组activity，subject对应的测量平均数


###3.生成数据说明
该数据为180行68列的dataframe格式数据
每一行代表同一组subject和activity使用传感器测量的数据的平均值，所以全排列共有30*6=180行
每一列代表一个特征其中前两列为activity和subject，即要求全排列的两个特征，其他的为带有mean()或者std()信息的传感器特征66列，所以共2+66=68列
具体传感器测量的名称的意义见附录

*其中结果列名称分别为
 [1] "y_activity_names"            "subject$V1"                  "tBodyAcc.mean...X"          
 [4] "tBodyAcc.mean...Y"           "tBodyAcc.mean...Z"           "tBodyAcc.std...X"           
 [7] "tBodyAcc.std...Y"            "tBodyAcc.std...Z"            "tGravityAcc.mean...X"       
[10] "tGravityAcc.mean...Y"        "tGravityAcc.mean...Z"        "tGravityAcc.std...X"        
[13] "tGravityAcc.std...Y"         "tGravityAcc.std...Z"         "tBodyAccJerk.mean...X"      
[16] "tBodyAccJerk.mean...Y"       "tBodyAccJerk.mean...Z"       "tBodyAccJerk.std...X"       
[19] "tBodyAccJerk.std...Y"        "tBodyAccJerk.std...Z"        "tBodyGyro.mean...X"         
[22] "tBodyGyro.mean...Y"          "tBodyGyro.mean...Z"          "tBodyGyro.std...X"          
[25] "tBodyGyro.std...Y"           "tBodyGyro.std...Z"           "tBodyGyroJerk.mean...X"     
[28] "tBodyGyroJerk.mean...Y"      "tBodyGyroJerk.mean...Z"      "tBodyGyroJerk.std...X"      
[31] "tBodyGyroJerk.std...Y"       "tBodyGyroJerk.std...Z"       "tBodyAccMag.mean.."         
[34] "tBodyAccMag.std.."           "tGravityAccMag.mean.."       "tGravityAccMag.std.."       
[37] "tBodyAccJerkMag.mean.."      "tBodyAccJerkMag.std.."       "tBodyGyroMag.mean.."        
[40] "tBodyGyroMag.std.."          "tBodyGyroJerkMag.mean.."     "tBodyGyroJerkMag.std.."     
[43] "fBodyAcc.mean...X"           "fBodyAcc.mean...Y"           "fBodyAcc.mean...Z"          
[46] "fBodyAcc.std...X"            "fBodyAcc.std...Y"            "fBodyAcc.std...Z"           
[49] "fBodyAccJerk.mean...X"       "fBodyAccJerk.mean...Y"       "fBodyAccJerk.mean...Z"      
[52] "fBodyAccJerk.std...X"        "fBodyAccJerk.std...Y"        "fBodyAccJerk.std...Z"       
[55] "fBodyGyro.mean...X"          "fBodyGyro.mean...Y"          "fBodyGyro.mean...Z"         
[58] "fBodyGyro.std...X"           "fBodyGyro.std...Y"           "fBodyGyro.std...Z"          
[61] "fBodyAccMag.mean.."          "fBodyAccMag.std.."           "fBodyBodyAccJerkMag.mean.." 
[64] "fBodyBodyAccJerkMag.std.."   "fBodyBodyGyroMag.mean.."     "fBodyBodyGyroMag.std.."     
[67] "fBodyBodyGyroJerkMag.mean.." "fBodyBodyGyroJerkMag.std.." 

###附录：原始数据

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