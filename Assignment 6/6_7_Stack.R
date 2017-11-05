 # 6_7 Stack

classA = c(10,14,15) 
classB = c(20,25,27)
classC = c(13,15,17)
(classmarks <- data.frame(classA,classB,classC)) # creating dataframe

stack(classmarks) # stacking 

# stacking only classA and classC
(s= stack(classmarks,c('classA','classC')))

unstack(s) # unstacking
