#step 1 - Merge training and test data sets into a single data set

#read and combine the test data:subject,features,activity
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
x_test<-read.table("UCI HAR Dataset/test/x_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
data_test<-cbind(subject_test,y_test,x_test)

#read and combine the training data:subject,features,activity
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
x_train<-read.table("UCI HAR Dataset/train/x_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
data_train<-cbind(subject_train,y_train,x_train)

#combine test and training data
data_all<-rbind(data_test,data_train)

#step 2 - Extract the Subject and Activity columns plus all columns with measure mean and standard deviation

#read the feature names
features<-read.table("UCI HAR Dataset/features.txt")

#determine which columns meet the spec for being extracted
names_all<-c("Subject","Activity",as.character(features[,2]))
cols_mean<-grep("mean()",names_all,fixed=TRUE)
cols_meanFreq<-grep("meanFreq()",names_all,fixed=TRUE)
cols_std<-grep("std()",names_all,fixed=TRUE)
cols_extract<-c(1,2,sort(c(cols_mean,cols_std,cols_meanFreq)))

#extract the columns
data_extract<-data_all[cols_extract]

#step 3 - replace the activity codes with descriptive names

activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")

#loop for naming each activity
for(i in 1:nrow(activity_labels)){
  data_extract[,2]<-gsub(i, activity_labels[i,2], data_extract[,2])
}

#step 4 - appropriately label each variable with a descriptive name

#Extract the columns names
names_extract<-names_all[cols_extract]

#clean up the variable names so they are proper R variable names
names_extract<-gsub("tB","TimeB",names_extract)
names_extract<-gsub("tG","TimeG",names_extract)
names_extract<-gsub("-mean()","Mean",names_extract,fixed=TRUE)
names_extract<-gsub("-meanFreq()","MeanFreq",names_extract,fixed=TRUE)
names_extract<-gsub("-std()","Std",names_extract,fixed=TRUE)
names_extract<-gsub("-X","X",names_extract)
names_extract<-gsub("-Y","Y",names_extract)
names_extract<-gsub("-Z","Z",names_extract)
names_extract<-gsub("fB","FreqB",names_extract)
names_extract<-gsub("fG","FreqG",names_extract)
names_extract<-gsub("BodyBody","Body",names_extract)

#assign the names to the columns
names(data_extract)<-names_extract

#step 5 - create tidy data set with average of each variable for each activity and each subject

#matrix to hold the average values
avg_tidy<-matrix(0, nrow=180,ncol=79)

#calculate average for each vaiable for each activity for each subject
for(i in 1:30){
  for(j in 1:6){
    for(k in 1:79){
      avg_tidy[((i-1)*6)+j,k]<-mean(data_extract[,k+2][data_extract$Subject==i & data_extract$Activity==activity_labels[j,2]])
    }
  }
}

#create tidy data set to include columns for the subject, activity and average for each variable
data_tidy<-cbind(data.frame(rep(1:30, each=6)),data.frame(rep(activity_labels[,2], times=30)),avg_tidy)

#assign descriptive names to the tidy data set
names_tidy<-c("Subject", "Activity",paste("Avg",names_extract[3:81], sep=""))
names(data_tidy)<-names_tidy

#create text file with tidy data set
write.table(data_tidy,"data_tidy.txt", row.name=FALSE)