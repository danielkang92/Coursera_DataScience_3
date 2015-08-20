#Assume we are in working directory
#Assume plyr library is downloaded

#Read in Label for activities (6 x 2)
labels=read.table("./activity_labels.txt",header=FALSE,stringsAsFactors = FALSE)

#Read in the feature names (561 x 2)
features=read.table("./features.txt",header=FALSE,stringsAsFactors = FALSE)

#We figure out which features we should focus on
keyword= (grepl('mean',features[,2] , ignore.case=TRUE) 
          | grepl('std',features[,2],ignore.case=TRUE))

#Only select the features that we care about
selectedfeatures=features[keyword,2]

##-------------TRAINING DIRECTORY-----------##

#Subject_train : sequence of 30 subjects (7352 x 1)
subject_train=read.table("./train/subject_train.txt",header=FALSE)

#y_train : sequence of activities (7352 x 1)
y_train=read.table("./train/y_train.txt",header=FALSE)

#x_train : dataset of features (7352 x 561)
x_train=read.table("./train/X_train.txt",header=FALSE)
#We only subset the values of interest (7352 x 86)             
x_train = x_train[,keyword]

#Combine all the training datasets
train_set=cbind(y_train,subject_train)
train_set=cbind(train_set,x_train)
colnames(train_set)=c("Activity","Subject",selectedfeatures)

##-------------TESTING DIRECTORY-----------##

#subject_test : sequence of subjects (2947 x 1)
subject_test=read.table("./test/subject_test.txt",header=FALSE)

#y_train : sequence of activities (2947 x 1)
y_test=read.table("./test/y_test.txt",header=FALSE)

#x_test : dataset of features (2947 x 561)
x_test=read.table("./test/X_test.txt",header=FALSE)
#We only subset the values of interest (2947 x 86)             
x_test = x_test[,keyword]

#Combine all the testing datasets
test_set=cbind(y_test,subject_test)
test_set=cbind(test_set,x_test)
colnames(test_set)=c("Activity","Subject",selectedfeatures)

##-------------Combine all Data------------##
#Combine training and testing sets (10299 x 88)
total_set=rbind(train_set,test_set)
total_set=total_set[order(total_set$Activity,total_set$Subject),]
total_set <- merge(labels,total_set,by.x="V1",by.y="Activity",all=TRUE)
total_set[,1] <- NULL
colnames(total_set)[1] <- "Activity"

##----Label the data with descriptive names-----##
names <- colnames(total_set)
names <- gsub("Mag","Magnitude",names)
names <- gsub("Acc","Acceleration",names)
names <- gsub("Freq","Frequency",names)
names <- gsub("std","st.dev",names)
colnames(total_set) = names


## Get the average of each column
library(plyr)
neat_set <- ddply(total_set,.(Activity,Subject),numcolwise(mean))

write.table(neat_set,file="./neat_set.txt",row.names = FALSE)