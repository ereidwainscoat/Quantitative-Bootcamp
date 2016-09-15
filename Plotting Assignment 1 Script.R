get_heights<-rnorm(100, mean=69, sd=10)
get_heights
get_heights<-function(numsamples){
  heights<-rnorm(numsamples, mean=69, sd=10)
  mm<-mean(heights)
  return(mm)
}
get_heights(100)
for(1:1000){get_heights(100)}
get_heights_100<-rep(NA, 1000)
for(ii in 1:1000){
  mm<-get_heights(100)
  get_heights_100[ii]<-mm
}
get_heights(1000)
for(1:1000){get_heights(1000)}
get_heights_1000<-rep(NA, 1000)
for(ii in 1:1000){
  mm<-get_heights(1000)
  get_heights_1000[ii]<-mm
}
summary(get_heights_100)
summary(get_heights_1000)
bins<-seq(65,73,by=0.5)
counts_get_heights_100<-hist(get_heights_100,breaks=bins)$counts
counts_get_heights_1000<-hist(get_heights_1000,breaks=bins)$counts
pdf(file="Plotting Assignment One_Histogram", width=6, height=6)
par(mfrow=c(1,1), mar=c(4,4,3,2))
barplot(rbind(counts_get_heights_100,counts_get_heights_1000),col=c(2,5),beside=T,names.arg=seq(65,72.5,0.5),xlab="Average Heights (inches)",ylab="count")
legend(6,350,c(get_heights_100,get_heights_1000), col=c(66,400), lwd=4)
dev.off()
