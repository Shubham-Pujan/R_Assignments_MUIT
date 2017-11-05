#Assignment 1

# Q1.a

marks2a = c(10 , 12, 13, 14 , 17)
sum(marks2a)/ length(marks2a)



# Q1 (b) Discrete
marks2b = c(10 , 12, 13, 14 , 17)
students2b = c(5,7,9,8,4)
sum(students2b)
(markstotal2 = marks2b * students2b)
sum(markstotal2b/ sum(students2b)) #13.06061

x=rep(marks2b, students2b)
table(x)
mean(x)


# Q1 (c)
#Continuous
marks2c =c("10-20","20-30","30-40","40-50")
students2c =c(5,7,9,8)
(df2c = data.frame(marks2c, students2c))
str(df2c)
midpt2c =c(15,25,35,45)
(markstotal2c = students2c * midpt2c)
df2c$mid2c = midpt2c
df2c$mid2c
df2c[,3]
df2c
df2c$total = df2c$students2c * df2c$mid2c
df2c
sum(df2c$total)/sum(students2c)
x =rep(df2c$mid2c, df2c$students2c)
mean(x)
(df2c = cbind(df2c, markstotal2c))
(mean2c1 = sum(markstotal2c)/ sum(students2c))
#31.89





