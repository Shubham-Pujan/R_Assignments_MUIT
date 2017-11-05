#creating the list
list1 <- list(1:20,55:100,mtcars$mpg,mtcars$wt)
list1
# apply sum to each element of list list1
lapply(list1,sum)
# results in vector form
sapply(list1,sum)
