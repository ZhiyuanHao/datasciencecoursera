##����ı����ƣ�
second_data_set.txt

##˵����

###1.�������
���README.md

###2.�м����˵��
features����ȡfeatures.txt�����м�¼��������������
subject_train����ȡsubject_train.txt
y_train����ȡy_train.txt
X_train����ȡX_train.txt������features���ƴ���������
subject_test����ȡsubject_test.txt
y_test����ȡy_test.txt
X_test����ȡX_test.txt������features���ƴ���������
subject����subject_train��subject_test�ϲ���һ��
y����y_train��y_test�ϲ���һ��
X����X_train��X_test�ϲ���һ��
col_mean_std������ԭ���������д���mean()����std()����������
X_mean_std���洢ԭ���ݾ����ϱ��й��˺�����ݣ�66�У�
activity_labels����ȡactivity_labels.txt�ļ������м�¼activity�ĺ�������ƵĶ�Ӧ��ϵ
y_activity_names���洢��y��activity�ɺ���ת��Ϊ���ƺ�ı������
data_set������������������ת����ı�Ǵ���һ��
second_data_set��Ҫ����������ÿ��activityÿ��subject��Ӧ��ƽ����


###3.��������˵��
������Ϊ66��6�е�dataframe��ʽ����
ÿһ�д���ʹ�ô�����������һ�����ݣ�����ƽ��ֵ�ͱ�׼��Ĺ�66��
ÿһ�д���һ��activity,��6��
�м����ֵ�������activity���ֲ�����ƽ��ֵ
���崫�������������Ƶ��������¼

*���н���������Ʒֱ�Ϊ
 [1] "tBodyAcc.mean...X"          [2] "tBodyAcc.mean...Y"            [3] "tBodyAcc.mean...Z"          
 [4] "tBodyAcc.std...X"           [5] "tBodyAcc.std...Y"             [6] "tBodyAcc.std...Z"           
 [7] "tGravityAcc.mean...X"       [8] "tGravityAcc.mean...Y"         [9] "tGravityAcc.mean...Z"       
[10] "tGravityAcc.std...X"       [11] "tGravityAcc.std...Y"         [12] "tGravityAcc.std...Z"        
[13] "tBodyAccJerk.mean...X"     [14]  "tBodyAccJerk.mean...Y"      [15]   "tBodyAccJerk.mean...Z"      
[16] "tBodyAccJerk.std...X"      [17]  "tBodyAccJerk.std...Y"       [18]  "tBodyAccJerk.std...Z"       
[19] "tBodyGyro.mean...X"        [20]  "tBodyGyro.mean...Y"         [21]  "tBodyGyro.mean...Z"         
[22] "tBodyGyro.std...X"         [23]  "tBodyGyro.std...Y"          [24]  "tBodyGyro.std...Z"          
[25] "tBodyGyroJerk.mean...X"    [26]   "tBodyGyroJerk.mean...Y"    [27]   "tBodyGyroJerk.mean...Z"     
[28] "tBodyGyroJerk.std...X"     [29]   "tBodyGyroJerk.std...Y"     [30]   "tBodyGyroJerk.std...Z"      
[31] "tBodyAccMag.mean.."        [32]   "tBodyAccMag.std.."         [33]  "tGravityAccMag.mean.."      
[34] "tGravityAccMag.std.."      [35]   "tBodyAccJerkMag.mean.."    [36]   "tBodyAccJerkMag.std.."      
[37] "tBodyGyroMag.mean.."       [38]   "tBodyGyroMag.std.."        [39]   "tBodyGyroJerkMag.mean.."    
[40] "tBodyGyroJerkMag.std.."    [41]   "fBodyAcc.mean...X"         [42]   "fBodyAcc.mean...Y"          
[43] "fBodyAcc.mean...Z"         [44]   "fBodyAcc.std...X"          [45]   "fBodyAcc.std...Y"           
[46] "fBodyAcc.std...Z"          [47]   "fBodyAccJerk.mean...X"     [48]   "fBodyAccJerk.mean...Y"      
[49] "fBodyAccJerk.mean...Z"     [50]   "fBodyAccJerk.std...X"      [51]   "fBodyAccJerk.std...Y"       
[52] "fBodyAccJerk.std...Z"      [53]   "fBodyGyro.mean...X"        [54]   "fBodyGyro.mean...Y"         
[55] "fBodyGyro.mean...Z"        [56]  "fBodyGyro.std...X"          [57]  "fBodyGyro.std...Y"          
[58] "fBodyGyro.std...Z"         [59]   "fBodyAccMag.mean.."        [60]   "fBodyAccMag.std.."          
[61] "fBodyBodyAccJerkMag.mean.."[62]  "fBodyBodyAccJerkMag.std.."  [63]  "fBodyBodyGyroMag.mean.."    
[64] "fBodyBodyGyroMag.std.."    [65]  "fBodyBodyGyroJerkMag.mean.."[66] "fBodyBodyGyroJerkMag.std.." 

*���н�������Ʒֱ�Ϊ
[1] "WALKING"          [2] "WALKING_UPSTAIRS"   [3] "WALKING_DOWNSTAIRS" [4] "SITTING"           
[5] "STANDING"         [6] "LAYING"

###��¼��ԭʼ����

*ԭʼ������Դ
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

*��������
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