#given data

guests <- c('Achal','Apoorva','Lalit','Goldie') #name of guests
course <- c('BSc','LLB','MSc') #name of courses
strength <- c(50,20,24) #no of students in corresponding courses
school <- c('Animation','Law','Data Science') #name of schools for corresponding courses
#since no of males and females in each class is 50% of total strength of each class
males <- strength/2
female <- strength/2

#creating a dataframe hosts to show schools,their course,and their strength
hosts <-data.frame(school,course,strength,males,female)

amts <- c(100,300,400,500,230,500,200,150,400,700) # amount collected

#firs 5 amounts are forfood and rest 5 are for decorations
bills=matrix(amts,nrow=2,byrow=T)
rownames(bills)=c("Food","Decorations")
colnames(bills)=c(paste0("B-",1:5))

#creating a list orientation to store all data
Orientation <-list(Guests=guests,Hosts=hosts,Bills=bills)
Orientation

(Total_bill=rowSums(bills)) #total bill of food and decoration
cat("Female among hosts = ",Orientation$Hosts$female) #female among hosts
cat("Male among hosts = ",Orientation$Hosts$female)    #male among hosts
noquote(paste("No. of Guests =",length(guests))) #no. of guests
