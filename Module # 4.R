#  1.    "0.6","103","bad","low","low”
# 2.     "0.3","87","bad","low","high”
# 3.     "0.4","32","bad","high","low”
# 4.      "0.4","42","bad","high","high"
# 5.     "0.2","59","good","low","low”
# 6.      "0.6","109","good","low","high”
# 7.     "0.3","78","good","high","low”
# 8.      "0.4","205","good","high","high”
# 9.      "0.9","135",”NA","high","high"
# 10.    "0.2","176",”bad","high","high”
#variables
Frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- c(1,1,1,1,0,0,0,0,NA,1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)
#create data frame, substitute num for high, low or good, bad
DF <-data.frame(Frequency,BP,
                First=ifelse(First==1,"bad", "good"),
                Second = ifelse(Second==1,"high", "low"),
                FinalDecisionifelse= ifelse(FinalDecision==1,"high", "low"))
  
DF
#create a box plot
boxplot(BP~First,DF)
boxplot(BP~Second,DF)

#create histograms
hist(BP)
hist(First) 
hist(Second)

