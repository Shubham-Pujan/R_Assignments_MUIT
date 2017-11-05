<<<<<<< HEAD
# Assignment 3 Solution 3
# using different seed values, generating random scores for 5 players for 10 matches

set.seed (1000)
(p1= ceiling (runif(10,30,100)))

set.seed (1100)
(p2= ceiling (runif(10,30,100)))

set.seed (1200)
(p3= ceiling (runif(10,30,100)))

set.seed (1300)
(p4= ceiling (runif(10,30,100)))

set.seed (1400)
(p5= ceiling (runif(10,30,100)))

Scores=matrix(c(p1,p2,p3,p4,p5),nrow=10)   #converting all data into matrix
colnames(Scores)=c(paste0("P",1:5)) #generating P1:P5 (player name) and assiging as col names
rownames(Scores)=c(paste0("M",1:10))    #generating M1:M10 (match no) and assiging as row names
Scores

(Player_Wise_Avg. =colMeans(x))  # average of each player over 10 matches
(Match_Wise_Avg. =rowMeans(x))  # average score in each match



=======
# Assignment 3 Solution 3
# using different seed values, generating random scores for 5 players for 10 matches

set.seed (1000)
(p1= ceiling (runif(10,30,100)))

set.seed (1100)
(p2= ceiling (runif(10,30,100)))

set.seed (1200)
(p3= ceiling (runif(10,30,100)))

set.seed (1300)
(p4= ceiling (runif(10,30,100)))

set.seed (1400)
(p5= ceiling (runif(10,30,100)))

Scores=matrix(c(p1,p2,p3,p4,p5),nrow=10)   #converting all data into matrix
colnames(Scores)=c(paste0("P",1:5)) #generating P1:P5 (player name) and assiging as col names
rownames(Scores)=c(paste0("M",1:10))    #generating M1:M10 (match no) and assiging as row names
Scores

(Player_Wise_Avg. =colMeans(x))  # average of each player over 10 matches
(Match_Wise_Avg. =rowMeans(x))  # average score in each match



>>>>>>> ce1cd251d1cfcb8a25672334c01da88538b8e19b
