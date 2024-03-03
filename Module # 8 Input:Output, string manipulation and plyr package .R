# load the plyr package
library(plyr)
#import the txt file and assign to txtStudentData
txtStudentData <- read.table("~/Downloads/Assignment 6 Dataset.txt", header = TRUE,sep = ",")
txtStudentData

#calculate average by sex
StudentAverage = ddply(txtStudentData,"Sex", transform, Grade.Average=mean(Grade))
StudentAverage
#write file as csv
write.csv(StudentAverage, "SortedAverage.csv")

#filter Data to include only students that contain "i" in their name
i_students <- subset(txtStudentData, grepl("i", txtStudentData$Name, ignore.case=T))
i_students

#write file as csv
write.csv(i_students, "i_students.csv")
