# 6_8 By
df3=read.csv("E:/rWork/rProjects/R_Assignments_MUIT/Assignment 6/6_8_dsstudents.csv")
str(df3)
df3$name=as.character(df3$name)
df3$email <- as.character(df3$email)
df3$city <- as.character(df3$city)
df3$dob <- as.Date(df3$dob,format='%d-%b-%y')
str(df3)

# finding course wise summary of all columns
df_summary=by(df3,df3$course,summary)
save(df_summary,file="6_8_summary.RData") # saving in .Rdata file
