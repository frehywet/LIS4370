Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
ABC_political_poll_results <- c(4, 62, 51, 21, 2, 14, 15)
CBS_political_poll_results <- c(12, 75, 43, 19, 1, 21, 19) 

# create data frame using the above 3 variables
electionResultsDF <- data.frame(Name,ABC_political_poll_results,CBS_political_poll_results)

#summary of data frame
summary(electionResultsDF)

#add a total variable to the data frame + summary
electionResultsDF$total <-ABC_political_poll_results +CBS_political_poll_results
summary(electionResultsDF)

#create a winner varible that shows the name w the highest number of "polls" combined
winner <-Name[which.max(electionResultsDF$total)]
winner

#print a statement showing the winner's name and number of "polls"
print(paste("the winner according to the poll results is", winner, "with a total number of",max(electionResultsDF$total)))


    