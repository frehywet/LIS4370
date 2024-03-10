#load packages
library(lattice)
library(ggplot2)
library(dplyr)

#read bank wages csv to bankWages
bankWages <- read.csv("~/Downloads/BankWages.csv")

#pie chart
#create jobs counts to use  for pie
job_counts <- count(bankWages, job)
#create a pie chart for the 3 types of jobs
categoriePie <- pie(job_counts$n,labels = job_counts$job, main = "Job Distribution", col=rainbow(3))
               
#lattice package visual of # years of education and job title
bwplot(education ~ job, data = bankWages,
       main = "Years of education by job title",
       xlab = "Job title", 
       ylab = "Years of Education", col = "red" )

#ggplot package count of number of jobs by job title and gender
ggplot(bankWages, aes(job,fill = gender)) +
  geom_bar()+
  ggtitle("Number of jobs by title and gender")+
  labs(
    x ="Job Title",
    y= "number of jobs"
  )

