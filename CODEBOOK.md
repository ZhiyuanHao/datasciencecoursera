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
data_set������������������ת����ı�ǣ���subject��Ϣ����һ��
melt_data���ں�������Ϣ����ԭ���������е�������Ϊ������Ϣչ����Ҫ��ȫ���е�������Ϊid
second_data_set��Ҫ����������ͬһ��activity��subject��Ӧ�Ĳ���ƽ����


###3.��������˵��
������Ϊ180��68�е�dataframe��ʽ����
ÿһ�д���ͬһ��subject��activityʹ�ô��������������ݵ�ƽ��ֵ������ȫ���й���30*6=180��
ÿһ�д���һ����������ǰ����Ϊactivity��subject����Ҫ��ȫ���е�����������������Ϊ����mean()����std()��Ϣ�Ĵ���������66�У����Թ�2+66=68��
���崫�������������Ƶ��������¼

*���н�������Ʒֱ�Ϊ
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