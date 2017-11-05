#given data
students <- c('S1', 'S2', 'S3', 'S4', 'S5') #Students 
gender <- c('M', 'F', 'M', 'M', 'F') #Gender 
age <- c(23, 22, 21, 25, 22) #Age 
city <- c('Delhi', 'Noida', 'Lucknow', 'Delhi', 'Noida') #City V
category <- c('Gen', 'OBC', 'Gen', 'SCST', 'Gen') #'Category 

Details=data.frame(students,gender,age,city,category)
Details

str(Details)
#No. of students in each category
table(Details$category)

#No. of students of each gender
table(Details$gender)

#since while creating dataframe, we did not specify stringasFactors=False, S1,S2 etc are Factor 
# types and not character
Details$students=as.character(Details$students) # converting from factor to character

Details$students=c(paste0("Student",1:length(Details$students)))

#after changing S1 to Student 1 and so on...
Details
