#Assignment 4 : Holiday Homework 

# loading data into a dataframe
df3 = read.csv("E:/rWork/rProjects/R_Assignments_MUIT/Assignment 4/dsstudents2.csv")
str(df3)

is.na(df3)   #checking if any NA values exist
colSums(is.na(df3))   #checking no of NA values coloumn wise

# change column format from factor to numeric, character and/or date
df3$name <- as.character(df3$name)
df3$email <- as.character(df3$email)
df3$city <- as.character(df3$city)
df3$dob <- as.Date(df3$dob,format='%d-%b-%y')
str(df3)

#creating a age coloumn
df3$age <- ceiling(as.numeric(difftime(Sys.Date(),df3$dob,unit='weeks'))/52.25)

sum(is.na(df3)) #no. of missing values
df3[!complete.cases(df3),] #rows which have at least one NA values



df3 # updated dataframe

#Addition of new record in df3 ----
df <- data.frame(17000,'Ramesh Singh','MSCDS',NA,TRUE,'1994-10-17',50000,
                 'ramesh@gmail.com','','Delhi',NA,NA,NA,NA)
df #record to be updated
colnames(df) <- colnames(df3[1:14]) #column names set
#formats of all columns changed from factors to date, numeric and/or character
df$dob <- as.Date(df$dob) 
df$email <- as.character(df$email)
df$city <- as.character(df$city)

#new column 'age' created in df
df$age <- ceiling(as.numeric(difftime(Sys.Date(),df$dob,units='weeks')/52.25))#calculating age
df #final updated df to be added to df3
df3 <- rbind(df3,df) #df added to df3
df3 #updated df3
colSums(is.na(df3))

#replace NA values with apprpiate values
ftable(df3$hostel) #'FALSE' has more frequency
df3$hostel[is.na(df3$hostel)] = FALSE #NA replaced with 'FALSE'

df3$fees[is.na(df3$fees)] <- mean(df3$fees,na.rm=T)      #NA replaced with mean fees
df3$excel[is.na(df3$excel)] <- ceiling(mean(df3$excel,na.rm=T))       #NA replaced with mean marks
df3$sql[is.na(df3$sql)] <- mean(df3$sql,na.rm=T)         #NA replaced with  mean marks
df3$stats[is.na(df3$stats)] <- round(mean(df3$stats,na.rm=T),0)   #NA replaced with  mean marks
df3$rpgm[is.na(df3$rpgm)] <- mean(df3$rpgm,na.rm=T)     #NA replaced with m mean marks
df3$city[is.na(df3$city)] <- 'Delhi'       #NA replaced to 'Delhi'
df3$gender=as.character(df3$gender)  #converting gender into character to find mode

# assigning NA value in gender to either M or F, whichever occurs more times
df3$gender[is.na(df3$gender)]=names(sort(-table(df3$gender)))[1]   

df3  # updated dataframe

############# creating summary tables

df3a <- df3[,c(11,12,13,14)]  #creating df3a having marks and roll no's
df3a
rownames(df3a) <- df3$rollno  #assigning roll no's as row names
df3a
round(addmargins(as.table(as.matrix(df3a)),c(2,1,1),list(sum,mean,median)))


t1 <- table(df3$course,df3$gender)
addmargins(t1)  # summary of course vs gender

prop.table(t1)  # proportions of course-gender table


#Grade function & Rank
# creating dataframe df3c having rollno,names & subject marks
df3c <- df3[,c(1,2,11,12,13,14)]# creating dataframe df3c having rollno,names & subject marks
df3c
df3c$total <- rowMeans(df3c[,c(3:6)])#creating total column
df3c
grades <- function(x)  # creating function for grades
  {
  if (x > 70){
    print('A')
  } else if (x >= 60 & x <= 70){
    print('B')
  } else {
    print('C')
  }
}

#for loop for giving grades according to avg. marks per row
for (i in c(1:12))
  
{
  df3c$grade[i] <- grades(df3c$total[i])
}
df3c$ranks <- rank(-df3c$total)#rank 1 to highest total marks
df3c=df3c[order(df3c$rank),]  #sorting the data acc to ranks
df3c
#finding out who has 5th rank
df3c$name[df3c$rank==5]


## row wise and column wise means
# creating dataframe having  marks of different subjects
df4=df3[,c(11:14)]
rownames(df4)=df3$rollno
df4$student_mean=ceiling(rowMeans(df4))
df4["subject_mean",]=ceiling(colMeans(df4))
df4


#split wrt course,wrt gender-hostel
split(df3[1:3],df3$course)#split according to course
split(df3[1:3],list(df3$gender,df3$hostel))#split wrt gender-hostel


#adding bigdata marks and scaling
bigdata <- ceiling(runif(12,100,150))
bigdata
df5 <- df3#creating new dataframe - df3d
df5
df5$bigdata <- bigdata#adding bigdata to df3d
df5

df5$bigdataS <- scale(df5$bigdata,center=F)#scaling bigdata marks
df5



#creating barplot
df6 <- df5[,c('rpgm','excel','sql','stats','bigdata')]
df6
g1 <- colMeans(df6)
barplot(g1,main = 'Average Marks')#barplot of average marks

