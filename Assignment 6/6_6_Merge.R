#6 - merge
rollno = c(17010,17045,17012,17087,17057,17056,17032,
           17084,17078,17018,17013)
sname = c('Achal Kumar','Apoorva Karn','Goldie Sahni','Hitesh Mann',
          'Kaustav Chatterjee','Meena Srisha Valavala','Rashmi Ranjan Mangaraj',
          'Shruti Sinha','Shubham Pujan','Vijay Pal Singh','Lalit Sahni')

course =  c('PGDDS','PGDDS','PGDDS','PGDDS','MSCDS','PGDDS','MSCDS',
            'PGDDS', 'PGDDS','PGDDS','PGDDS')

(df1 <- data.frame(rollno,sname,course))    # creating df1


gender = c('M','F','M','M','M','F','M','F','M','M','M')
exp =  c(3,3.5,14,5,0,1,1,15,1,3,8) # Experience
hostel =  c(FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,TRUE,TRUE)
(df2 <- data.frame(rollno,gender,exp,hostel)) # creating df2

# merging df1 and df2
merge(df1,df2)  # automatic default  mergin

# Create DF of marks of subject1
ID = c(17010,17045,17012,17089)
SEX = c('M','F','M','M')
SUB1 = c(50,60, 70,80)
(df3 = data.frame(ID, SEX, SUB1))


df1$gender=gender #creating gender colomn in df1

#merging df1 and df3 on columns rollno and gender
merge(df1,df3,by.x=c("rollno","gender"),by.y=c("ID","SEX"))


merge(df1, df3, by.x = c('rollno'), by.y=c('ID'), all=TRUE) #outer join


merge(df1, df3, by.x = c('rollno'), by.y=c('ID'), all=FALSE) # inner join

merge(df1, df3, by.x = c('rollno'), by.y=c('ID'), all.x=TRUE) # left outer 

merge(df1, df3, by.x = c('rollno'), by.y=c('ID'), all.y=TRUE) #right outer 

