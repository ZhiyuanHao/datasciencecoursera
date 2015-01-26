##1.整合培训和测试集，创建一个数据集，并使用描述性变量名称恰当标记数据集。
features <- read.table("./features.txt", stringsAsFactors = FALSE)
subject_train <- read.table("./train/subject_train.txt")
y_train <- read.table("./train/y_train.txt", col.name = "activity")
X_train <- read.table("./train/X_train.txt", header = FALSE, col.name = features[,2], nrows = nrow(y_train))
subject_test <- read.table("./test/subject_test.txt")
y_test <- read.table("./test/y_test.txt", col.name = "activity")
X_test <- read.table("./test/X_test.txt", header = FALSE, col.name = features[,2], nrows = nrow(y_test))
subject <- rbind(subject_train, subject_test)
y <- rbind(y_train, y_test)
X <- rbind(X_train, X_test)

##2.仅提取测量的平均值以及每次测量的标准差。
col_mean_std <- grepl("mean\\(\\)|std\\(\\)", features[,2])
X_mean_std <- X[, col_mean_std]

##3.使用描述性活动名称命名数据集中的活动
activity_labels <- read.table("./activity_labels.txt", stringsAsFactors = FALSE)
y_activity_names <- y$activity
for (i in 1:6)
    y_activity_names <- gsub(activity_labels[i,1], activity_labels[i,2], y_activity_names)
end
y_activity_names <- data.frame(y_activity_names, stringsAsFactors = FALSE)

##4.使用描述性变量名称恰当标记数据集。
##已经在第一步的col.name中完成

##5.从第4步的数据集中，针对每个活动和每个主题使用每个表里的平均值建立第2个独立的整洁数据集。
data_set = cbind(y_activity_names, subject$V1, X_mean_std)
melt_data <- melt(data_set, id = c("y_activity_names", "subject$V1"), measure.vars = colnames(X_mean_std))
second_data_set <- dcast(melt_data, y_activity_names + subject$V1 ~ variable, mean)
write.table(second_data_set, file = "./second_data_set.txt",row.name=FALSE)