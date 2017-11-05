#6_2_Environment

e=new.env()  # creating a new environment

e$a <- matrix(1:12,nrow=4) # creating environment variable a as matrix 
e$a
e$b <- array(c(1:12,12:24),dim=c(3,4,2)) # creating environment variable b as array
e$b

# finding class of variables
class(e$a)
class(e$b)

#finding mean of variables
mean(e$a)
mean(e$b[,,1])
mean(e$b[,,2])
(mean(e$b[,,1])+mean(e$b[,,2]))/2
mean(e$b)

