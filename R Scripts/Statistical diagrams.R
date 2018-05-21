#To generate a pic chart in R
x = c(21,62,10,53)
labels = c("Bengalore","Chennai","Hyderabad","Mumbai")
pie(x,labels)

#To generate a bar chart
B = c(7,12,28,3,41)
barplot(B)

#To plot a Time graph
year = c(2000,2001,2002,2003,2004,2005)
height = c(150,152,155,156,159,165)
plot(year,height,type = 'l')

#To plot a histogram
capacity = c(10,12,12,13,14,15,17,20,21,22,20,23,25,26)
hist(capacity)

#To plot a boxplot
ages=c(22,55,56,65,45,21,43,34,45,5,66,88,98,76,87,56,67,83,45,62,4,6,98,17,45)
boxplot(ages)

