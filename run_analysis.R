##1.������ѵ�Ͳ��Լ�������һ�����ݼ�����ʹ�������Ա�������ǡ��������ݼ���
features <- read.table("./features.txt")
subject_train <- read.table("./train/subject_train.txt")
y_train <- read.table("./train/y_train.txt", col.name = "activity")
X_train <- read.table("./train/X_train.txt", header = FALSE, col.name = features[,2], nrows = nrow(y_train))
subject_test <- read.table("./test/subject_test.txt")
y_test <- read.table("./test/y_test.txt", col.name = "activity")
X_test <- read.table("./test/X_test.txt", header = FALSE, col.name = features[,2], nrows = nrow(y_test))
subject <- rbind(subject_train, subject_test)
y <- rbind(y_train, y_test)
X <- rbind(X_train, X_test)

##2.����ȡ������ƽ��ֵ�Լ�ÿ�β����ı�׼�
col_mean_std <- grepl("mean\\(\\)|std\\(\\)", as.character(features[,2]))
X_mean_std <- X[, col_mean_std]

##3.ʹ�������Ի�����������ݼ��еĻ
activity_labels <- read.table("./activity_labels.txt")
y_activity_names <- y$activity
for (i in 1:6)
    y_activity_names <- gsub(activity_labels[i,1], activity_labels[i,2], y_activity_names)
end
y_activity_names <- data.frame(y_activity_names)

##4.ʹ�������Ա�������ǡ��������ݼ���
##�Ѿ��ڵ�һ����col.name�����

##5.�ӵ�4�������ݼ��У����ÿ�����ÿ������ʹ��ÿ�������ƽ��ֵ������2���������������ݼ���
data_set = cbind(X_mean_std, y_activity_names)
second_data_set <- matrix(nrow = 66, ncol = 6)
rownames(second_data_set) <- colnames(X_mean_std)
colnames(second_data_set) <- activity_labels$V2
for (i in 1:ncol(X_mean_std))
    second_data_set[i,] <- tapply(data_set[,i],data_set$y_activity_names,mean)
end
second_data_set <- as.data.frame(second_data_set)
write.table(second_data_set, file = "./second_data_set.txt", row.name = FALSE)