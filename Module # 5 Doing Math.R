#OG MATRIX
A <- matrix(1:100, nrow=10)  
B <- matrix(1:1000, nrow=10)

#Transpose A and B
Atranspose <- t(A)
Atranspose
Btranspose <- t(B)
Btranspose

#create two vectors (a and b)
a <- c(1:10)
b <- c(1:100)

#multiply matrices by vectors
Axa <- A %*% a
Axa
Bxb <- B %*% b 
Bxb

#re-assign the vectors a and b to equal the number of rows of the column for the corresponding matrix
a <- nrow(A) 
b <- nrow(B) 

#Multiply the matrix by a matrix
AxB <- A %*% B
AxB
#Inverse a matrix
S=matrix(2:5, nrow=2)
#check det()
S
det(S)
solve(S)
