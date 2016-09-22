ChickWeight=ChickWeight
View(ChickWeight)
Day1=ChickWeight[ChickWeight$Time==0,]
Day1Diet1=Day1[Day1$Diet==1,]
Day1Diet2=Day1[Day1$Diet==2,]
Day1Diet3=Day1[Day1$Diet==3,]
Day1Diet4=Day1[Day1$Diet==4,]
windows() # opens the figure in a new window. use the command quartz() for macs
par(mar=c(5, 5, 4, 3)) # set the margins
boxplot(Day1Diet1$weight, Day1Diet2$weight, Day1Diet3$weight, Day1Diet4$weight, # the data to plot
        names=c('Diet1','Diet2', 'Diet3', 'Diet4'), xlab="Day 0", ylab="Chick Weights", # label the axes 
        col=c("cyan","aquamarine","mediumseagreen", "darkorchid4"), # set the colors of the boxplots
        las=1, # set the numbers on the axis so that they are upright
        cex.axis=1.5,cex.lab=1.5) # make sure the fonts are large enough to read
anova1=aov(weight~Diet, data=Day1)
summary(anova1)
TukeyHSD(anova1)
#not significant, p=0.346

Day21=ChickWeight[ChickWeight$Time==21,]
Day21Diet1=Day21[Day21$Diet==1,]
Day21Diet2=Day21[Day21$Diet==2,]
Day21Diet3=Day21[Day21$Diet==3,]
Day21Diet4=Day21[Day21$Diet==4,]
windows() # opens the figure in a new window. use the command quartz() for macs
par(mar=c(5, 5, 4, 3)) # set the margins
boxplot(Day21Diet1$weight, Day21Diet2$weight, Day21Diet3$weight, Day21Diet4$weight, # the data to plot
        names=c('Diet1','Diet2', 'Diet3', 'Diet4'), xlab="Day 21", ylab="Chick Weights", # label the axes 
        col=c("cyan","aquamarine","mediumseagreen", "darkorchid4"), # set the colors of the boxplots
        las=1, # set the numbers on the axis so that they are upright
        cex.axis=1.5,cex.lab=1.5) # make sure the fonts are large enough to read
anova2=aov(weight~Diet, data=Day21)
summary(anova2)
TukeyHSD(anova2)
#significant, p=0.00686

data<-ChickWeight
data<-within(data,{
  Chick<-factor(Chick)
  Diet<-factor(Diet)
  Time<-factor(Time)
})
summary(aov(weight~Diet*Time+Error(Chick),data=data))
#significant, p=0.000799

windows() # set a new figure
plot(as.numeric(ChickWeight$Time), ChickWeight$weight, pch=19)

cols=sub(1,"paleturquoise1",ChickWeight$Diet)
cols=sub(2,"palegreen1",cols)
cols=sub(3,"palevioletred1",cols)
cols=sub(4,"plum4",cols)

plot(as.numeric(ChickWeight$Time),ChickWeight$weight, # data to plot 
     xlab='Time',ylab='Chick Weight', main= "Effect of diet on Chick Growth", # label your axes
     col=cols,
     pch=19,las=1,cex.axis=1.5,cex.lab=1.5) # make the figure pretty
legend("topleft", title="Diet", legend=unique(ChickWeight$Diet), text.col=c("paleturquoise1", "palegreen1", "palevioletred1", "plum4"), pch=16, col=c("paleturquoise1", "palegreen1", "palevioletred1", "plum4"))

plot(NA, ylim=c(0,370), xlim=c(0,21), xlab="Time", ylab="Weight", main="Individual Chick Growth Over Time")
colors=rainbow(50)
for(ID in 1:50) {
  use.rows=which(ChickWeight$Chick == ID)
  lines(x=ChickWeight$Time[use.rows],
        y=ChickWeight$weight[use.rows], col=colors[ID])
}

