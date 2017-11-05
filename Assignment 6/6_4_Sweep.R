#6_4_Sweep

#dataset attitude
data(attitude)
attitude
dim(attitude)
(med <- apply(attitude,2,median)) # median of each column
sweep(attitude,2,med,FUN = "-")  # subtract median from each column

# creating array of values 1 to 24 with 3 dimension : 4,3,2
(a <- array(1:24,dim=c(4,3,2)))

sweep(a,1,5,FUN="-")   #Subtract 5 from each row
(minimum = apply(a,1,min) )   #  minimum of each row
sweep(a,1,mini,FUN="-")  # subtract  minimum value from each row

# subtract median value across row & col 
sweep(a,1:2,apply(a2,1:2,median))
## warnings 
sweep(a,1,1:3) # STATS does not recycle
sweep(a, 1, 6:1) # STATS is longer
# exact recyling
sweep(a, 1, 1:2)

















