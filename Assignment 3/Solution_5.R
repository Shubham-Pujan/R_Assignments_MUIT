<<<<<<< HEAD
#given data

School <- c('DS', 'Law')
Courses <- c('Graduate', 'PG', 'Diploma')
Student <- c('S1','S2','S3','S4','S5')

#creating 5*3*2 = 30 random values to assign as scholarships
set.seed(1234)
Scholarship <- ceiling(runif(30,1000,2000))
?array
school_array <- array(Scholarship,c(5,3,2),dimnames = list(Student,Courses,School))                       
school_array

#Scholarship given to student 5 of course PG in school DS
school_array["S5","PG","DS"]  #school_array[5,2,1]

#Scholarship given to student 1 of course diploma in school Law
school_array["S1","Diploma","Law"]  #school_array[5,2,1]

#Average Scholarships : School vs Courses for all students
ceiling(apply(school_array,c(2,3),mean))

#Sum of scholarship given to Students (1-5) [all course and all schools included]
apply(school_array,c(1),sum)

#Average Scholarships : Students vs Courses for all schools courses
ceiling(apply(school_array,c(1,2),mean))

#sum of scholarships: Coursewise [all schools and all students ]
apply(school_array,c(2),sum)

#sum of scholarships: School wise [all courses and all students ]
apply(school_array,c(3),sum)
=======
#given data

School <- c('DS', 'Law')
Courses <- c('Graduate', 'PG', 'Diploma')
Student <- c('S1','S2','S3','S4','S5')

#creating 5*3*2 = 30 random values to assign as scholarships
set.seed(1234)
Scholarship <- ceiling(runif(30,1000,2000))
?array
school_array <- array(Scholarship,c(5,3,2),dimnames = list(Student,Courses,School))                       
school_array

#Scholarship given to student 5 of course PG in school DS
school_array["S5","PG","DS"]  #school_array[5,2,1]

#Scholarship given to student 1 of course diploma in school Law
school_array["S1","Diploma","Law"]  #school_array[5,2,1]

#Average Scholarships : School vs Courses for all students
ceiling(apply(school_array,c(2,3),mean))

#Sum of scholarship given to Students (1-5) [all course and all schools included]
apply(school_array,c(1),sum)

#Average Scholarships : Students vs Courses for all schools courses
ceiling(apply(school_array,c(1,2),mean))

#sum of scholarships: Coursewise [all schools and all students ]
apply(school_array,c(2),sum)

#sum of scholarships: School wise [all courses and all students ]
apply(school_array,c(3),sum)
>>>>>>> ce1cd251d1cfcb8a25672334c01da88538b8e19b
