<<<<<<< HEAD

y=c(1:30)    # roll no of 30  students


# generating a sample of  30 present and absent values
x= sample(c('A','P'), size=30, replace=T, prob = c(0.3,0.7)) 

# adding rollno and attendance into dataframe

df=data.frame(y,x)  
colnames(df)=c("Roll No.","Attendence on 5th Sept")

df

table(x)   # finding strength  of present and absent students

=======

y=c(1:30)    # roll no of 30  students


# generating a sample of  30 present and absent values
x= sample(c('A','P'), size=30, replace=T, prob = c(0.3,0.7)) 

# adding rollno and attendance into dataframe

df=data.frame(y,x)  
colnames(df)=c("Roll No.","Attendence on 5th Sept")

df

table(x)   # finding strength  of present and absent students

>>>>>>> ce1cd251d1cfcb8a25672334c01da88538b8e19b
