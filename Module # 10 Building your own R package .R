
#the function i will be creat is called HeadsorTails, 
#that returns whether a coin flips head or tails. i used hilary parker's example to write
# my R package from scratch.

#first step is toi packages needed ti develop our own
install.packages("devtools")
devtools::install_github("klutometis/roxygen")
library(roxygen2)
library(devtools)

# next set thhe directors and create a folder. the folder contains files for description, man, rproj, namespace and R code. 
setwd("/Users/frey/4370")
create("myRPackage")

#add comments about the function before the code
#' HeadsorTails Function 
#' This function returns whether a coin randomly flips head or tails
#' @return returns a character string
#' @keywords heads or tails
#' @export
#' @examples
#' HeadsorTails()
#' 

#write code for function
HeadsorTails <- function(){
  n <- sample(0:1, 1)
  if(n==0){
    print("You got heads")
  }
  else {
    print("You got tails")
  }
}

#set working directors to the new file and document
setwd("./myRPackage")
document()

#install our newly created package
setwd("..")
install("myRPackage")


