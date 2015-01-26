##脚本名称：
run_analysis.R

##脚本作用：
将“UCI HAR Dataset”原数据转换为根据不同activity和不同subject产生的测量数据的平均值。

##执行方法
请将工作目录置于UCI HAR Dataset文件夹下，直接运行run_analysis.R即可。

##执行操作

###1.整合培训和测试集，创建一个数据集，并使用描述性变量名称恰当标记数据集。
*读取原train和test的特征以及标记数据，分别为subject_train，X_train，y_train，subject_test，X_test，y_test
*读取数据时将列名改为feature.txt中的对应描述性列名称
*将train和test中的数据bind成一个大的数据集，分别为subject，X，y

###2.仅提取测量的平均值以及每次测量的标准差。
*应用正则表达式，使用grepl函数提取列名中含有mean()和std()的列
*存储为X_mean_std

###3.使用描述性活动名称命名数据集中的活动
*读取activity序号和名称的activity_labels.txt
*使用gsub替换函数将数据中序号变换为名称，存储为y_activity_names

###4.使用描述性变量名称恰当标记数据集。
*该步骤已经在第一步的col.name设定中完成

###5.从第4步的数据集中，针对每个活动和每个主题使用每个表里的平均值建立第2个独立的整洁数据集。
*将X_mean_std和y_activity_names合并
*根据相同的y_activity_names计算原X_mean_std中每一个特征的平均值
*最终结果存储在second_data_set中
*将结果写出到second_data_set.txt文本文件中