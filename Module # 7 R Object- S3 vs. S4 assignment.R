data("USArrests")

# the following genertic functions can be applied to USArrests
head(USArrests)
str(USArrests)
summary(USArrests)
install.packages("pryr")
library(pryr)
#   1. How do you tell what OO system (S3 vs. S4) an object is associated with?
#by using otype() from the pryr package returns whether it is S3 or S4 or or 
# isS4() returns TRUE or FALSE

otype(USArrests)
isS4(USArrests)
#   2. How do you determine the base type (like integer or list) of an object?
#base tyoe can be determined by using typeof()
typeof(USArrests)

#   3. What is a generic function?
# a generic function is a collection of methods that can be used for different types. 
#The specific method used depends on the classes of the arguments to the function

#   4. What are the main differences between S3 and S4?
#S3 is informal set of naming convention, it has no formal definition of classes
#S4 is more fromal, and has formal definiitons

#   5. In your GitHub, create two examples of S3 and S4.
#S3 example
studentGrades <-list(name = "John", subject = "Biology", grade = 92)
studentGrades

#S4 example
setClass("studentGrades", representation(name = "character",subject = "character", grade = "numeric"))
studentGrades2 <- new("studentGrades", name = "John", subject = "Statistics", grade =95)
studentGrades2
