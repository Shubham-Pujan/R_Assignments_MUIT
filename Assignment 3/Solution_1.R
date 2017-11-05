#given data
qtrs=c("Q1","Q2","Q3","Q4")
qtrs
sales
sales=c(10000,13000,12000,15000)
sales
df=data.frame(qtrs,sales)

colnames(df) =c("Quarter","Sales of coy")

df
barplot(df$`Sales of coy`,names.arg = df$Quarter,              # plotting bar graph
        main = " Sales of Coy in each Quarter" ,              # assinging nain title
        sub = " Bargraph : Sales vs Quarters" ,               # assigning sub title
        xlab = "Quarters",   ylab = "Sales of coy" )           #assigning y label and x label

x=df$Quarter[df$`Sales of coy`>11000]  # quarters with sales above 11000
x

df$`Sales of coy`[df$Quarter=="Q3"]   # sales of coy in quarter Q3

      