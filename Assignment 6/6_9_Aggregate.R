# mean of all columns of mtcars - grouped by cylinders(cyl)
# and then transmission (am)

round(aggregate(mtcars,by=list(cyl=mtcars$cyl,am=mtcars$am),FUN='mean'),2)

# sum of all marks of all subjects DSstudents dataframe :
# group by hostel and then gender
dat=read.csv("E:/rWork/rProjects/R_Assignments_MUIT/Assignment 6/6_8_dsstudents.csv")

aggregate(dat[,c('rpgm','excel','sql','stats')],
          by=list(hostel=dat$hostel,gender=dat$gender),FUN='sum')
