unzip("getdata-projectfiles-UCI HAR Dataset.zip")
X_train<-read.table('UCI HAR Dataset/train/X_train.txt')
y_train<-read.table('UCI HAR Dataset/train/Y_train.txt')
subj_train<-read.table('UCI HAR Dataset/train/subject_train.txt')

X_test<-read.table('UCI HAR Dataset/test/X_test.txt')
y_test<-read.table('UCI HAR Dataset/test/y_test.txt')
subj_test<-read.table('UCI HAR Dataset/test/subject_test.txt')

X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subj <- rbind(subj_train, subj_test)

features <- read.table('UCI HAR Dataset/features.txt')
mean_features <- features[grepl("*mean\\(\\)*", features$V2),]
std_features <- features[grepl("*std\\(\\)*", features$V2),]

comb_features <- rbind(mean_features, std_features)
comb_features <- comb_features[order(comb_features$V1, comb_features$V2),]

X_reduced <- X[,as.numeric(comb_features$V1)]
colnames(X_reduced) <- comb_features$V2

X_reduced$subject <- subj$V1
X_reduced$activity <- y$V1

X_means<-aggregate(X_reduced, list(X_reduced$activity, X_reduced$subj), mean)
X_means <- X_means[,c(69, 70, 3:68)]

write.table(X_means, "tidy_data_means.txt", row.name = FALSE)