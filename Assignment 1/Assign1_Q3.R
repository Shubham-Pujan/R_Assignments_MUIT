set.seed(1234)
marks=ceiling(runif(50, 0, 100))
marks
cat(marks)
range(marks)
# we need this (10,20]  (60,70]  (60,70]  (60,70]  (80,90]  (60,70]   [7] (0,10]   (20,30]  (60,70]  (50,60]  (60,70]  (50,60]
breaks = seq(0,100, by=10)

breaks
marks.cut = cut(marks, breaks)
marks.cut
marks.table = table(marks.cut)
marks.table
cbind(marks.table)
marks
hist(marks, breaks=10)

