# Scatter Plots

df=read.csv(file ='./Data/Assign2Data.csv') #loading data form into a datframe

str(df) #checking structure of dataframe

# scatter plot using points
plot(df$Temperature...Celsius.,df$Ice.Cream.Sales..Rupees.,
     main="Temperature Vs. Sales",sub="Scatter Plot with points",

     type="p",xlab="Temp. in Degree Celsius",ylab="Sales in Rupees",pch=19)

# scatter plot using lines
plot(df$Temperature...Celsius.,df$Ice.Cream.Sales..Rupees.,
     main="Temperature Vs. Sales",sub="Scatter Plot with lines",

     type="l",xlab="Sales in Rupees",ylab="Temp. in Degrees Celsius",pch=19)


# scatter plot using both lines and points
plot(df$Temperature...Celsius.,df$Ice.Cream.Sales..Rupees.,
     main="Temperature Vs. Sales",sub="Scatter Plot with points and lines",


     type="b",xlab="Sales in Rupees",ylab="Temp. in Degrees Celsius",pch=19)


