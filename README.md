##�ű����ƣ�
run_analysis.R

##�ű����ã�
����UCI HAR Dataset��ԭ����ת��Ϊ���ݲ�ͬactivity�Ͳ�ͬsubject�����Ĳ������ݵ�ƽ��ֵ��

##ִ�з���
�뽫����Ŀ¼����UCI HAR Dataset�ļ����£�ֱ������run_analysis.R���ɡ�

##ִ�в���

###1.������ѵ�Ͳ��Լ�������һ�����ݼ�����ʹ�������Ա�������ǡ��������ݼ���
*��ȡԭtrain��test�������Լ�������ݣ��ֱ�Ϊsubject_train��X_train��y_train��subject_test��X_test��y_test
*��ȡ����ʱ��������Ϊfeature.txt�еĶ�Ӧ������������
*��train��test�е�����bind��һ��������ݼ����ֱ�Ϊsubject��X��y

###2.����ȡ������ƽ��ֵ�Լ�ÿ�β����ı�׼�
*Ӧ��������ʽ��ʹ��grepl������ȡ�����к���mean()��std()����
*�洢ΪX_mean_std

###3.ʹ�������Ի�����������ݼ��еĻ
*��ȡactivity��ź����Ƶ�activity_labels.txt
*ʹ��gsub�滻��������������ű任Ϊ���ƣ��洢Ϊy_activity_names

###4.ʹ�������Ա�������ǡ��������ݼ���
*�ò����Ѿ��ڵ�һ����col.name�趨�����

###5.�ӵ�4�������ݼ��У����ÿ�����ÿ������ʹ��ÿ�������ƽ��ֵ������2���������������ݼ���
*��X_mean_std��y_activity_names�ϲ�
*������ͬ��y_activity_names����ԭX_mean_std��ÿһ��������ƽ��ֵ
*���ս���洢��second_data_set��
*�����д����second_data_set.txt�ı��ļ���