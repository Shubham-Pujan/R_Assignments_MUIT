# Cast and Melt
library(reshape)
library(reshape2)
#creating dataframe 
(x = data.frame(subject = c("Lalit", "Vijay"),time = c(1,1),
                age = c(33,NA),weight = c(80, NA),height = c(2,2)) )
melt(x)  # melting
is.na(x)
colSums(is.na(x))       # checking for NA and replacing NA with app. values
x$age[is.na(x$age)]=45       
x$weight[is.na(x$weight)]=80
(x_melt=melt(x,id=c("subject","time")))

#different  instances of casting
(m1=dcast(x_melt,subject+time~variable))

(m2=dcast(x_melt,subject~variable) ) 

(m3=dcast(x_melt,time+subject~variable))

(m4=acast(x_melt,subject~time~variable))


