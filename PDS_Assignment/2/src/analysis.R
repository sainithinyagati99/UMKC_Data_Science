#reading dataset from the csv file
data<-read.csv("D:\\Docs\\My_Projects\\Data_Science\\PDS_Assignment\\2\\data_raw\\StudentsPerformance.csv")

#summarizing the complete dataset
summary(data)

#understanding the data
names(data)
dim(data)

attach(data)
hist(reading.score,main="histogram",xlab="reading score",col="pink")

attach(data)
qqplot(math.score,reading.score,main="qqplot in between math and reading scores",xlab="math score",ylab="reading score",col="pink")

attach(data)
boxplot(math.score,main="Box Plot for math score",col='pink')

attach(data)
pairs(~writing.score+reading.score+math.score,main="Graph between writing reading and math",col='pink')

attach(data)
plot(writing.score,math.score,main="Plot between reading and math",xlab = "reading", ylab="math",col="pink")
