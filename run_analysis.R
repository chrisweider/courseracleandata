run_analysis <- function()
{
  XTest <- read.table("x_test.txt", stringsAsFactors=FALSE)
XTrain <- read.table("x_train.txt", stringsAsFactors=FALSE)
YTest <- read.table("y_test.txt", stringsAsFactors=FALSE)
YTrain <- read.table("y_train.txt", stringsAsFactors=FALSE)
STest <- read.table("subject_test.txt", stringsAsFactors=FALSE)
STrain <- read.table("subject_train.txt", stringsAsFactors=FALSE)
ALabels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
Features <- read.table("features.txt", stringsAsFactors=FALSE)
svec <- c(STest, STrain)
svec <- rbind(STest, STrain)
yvec <- rbind(YTest, YTrain)
xdata <- rbind(XTest, XTrain)
colnames(xdata) <- Features[,2]
colnames(svec) <- "Subject"
colnames(yvec) <- "Activity"
int1 <- cbind(svec, yvec)
TargetData<-subset(xdata, select = c(1:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266:271, 294:296, 345:350, 373:375, 424:429, 452:454, 503, 504, 513, 516, 517, 526, 529, 530, 539, 542, 543, 552, 555:561))
bigxdata <- cbind(int1, TargetData)
bigxdata$Activity[bigxdata$Activity=="1"]<-
"WALKING"
bigxdata$Activity[bigxdata$Activity=="2"]<-
"WALKING_UPSTAIRS"
bigxdata$Activity[bigxdata$Activity=="3"]<-
"WALKING_DOWNSTAIRS"
bigxdata$Activity[bigxdata$Activity=="4"]<-
"SITTING"
bigxdata$Activity[bigxdata$Activity=="5"]<-
"STANDING"
bigxdata$Activity[bigxdata$Activity=="6"]<-
"LAYING"
TidyData <- bigxdata %>% group_by(Subject, Activity) %>% summarise_each(funs(mean)) %>% print
}
