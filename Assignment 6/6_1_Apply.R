#Assignment 6 
# Apply functions

#1. creating vector of 40 values at equal interval between 10 and 200

vec=ceiling(seq(10,200,length.out=40))
vec

#2. creating a 5 x 8 matrix
m=matrix(vec,ncol=8)
m
apply(m,1,FUN = prod) #3. product of each row of maatrix
apply(m,2,FUN = sum)  #4. sum of each column of matrix

#5. creating new matrix with m % 10 values
m1=sweep(m,1,10,FUN = "%%")
m1

#6.  counting no of odd elements in each row of matrix m1
m2=sweep(m,1,2,FUN="%%") 
m2
#dividing each element of m1 by 2 and storing remainder in m2
# remainder 1 means element was odd and 0 means element was even
#  hence adding eleemnts row wise in m2  gives no of odd elements in m1
apply(m2,1,sum)

#7. viewing dataset iris
data(iris)
str(iris)
i=iris                    # loading iris in i

#8. finding mean of first 4 variables by species
agg <- aggregate(i[,c(1:4)],by=list(i$Species),FUN=mean,na.rm=TRUE)
agg




