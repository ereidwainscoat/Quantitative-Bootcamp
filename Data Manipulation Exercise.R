setwd("C:/Users/Elizabeth/Documents/Data")
snpsDataFrame=read.table('hapmap_CEU_r23a_chr2_ld-2.txt',header=TRUE)
compute_chisquare<-function(x){
freq<-sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
cnt0<-sum(x==0,na.rm=TRUE)
cnt1<-sum(x==1,na.rm=TRUE)
cnt2<-sum(x==2,na.rm=TRUE)
obscnts<-c(cnt0,cnt1,cnt2)
n<-sum(obscnts)
expcnts<-c((1-freq)^2,2*freq*(1-freq),freq^2)*n
chisq<-sum((obscnts-expcnts)^2/expcnts)
return(chisq)
}
snpsDataMatrix=as.matrix(snpsDataFrame)
chisqs=apply(snpsDataMatrix,1,compute_chisquare)
pvals=pchisq(chisqs,1,lower.tail = FALSE)

proportion_of_pvals<-0.05
sum(pvals<proportion_of_pvals)
length(pvals)
sum((pvals<proportion_of_pvals))/(length(pvals))#answer=0.04509218
proportion_of_pvals_small<-0.01
sum((pvals<proportion_of_pvals_small))/(length(pvals))#answer=0.01021425
proportion_of_pvals_smallest<-0.001
sum((pvals<proportion_of_pvals_smallest))/(length(pvals))#answer=0.00124564, YES

num_pval<-length(pvals)#4014 

exp_pvals<-(seq(1,num_pval, by=1))/num_pval

sort_pvals<-sort(pvals, decreasing=FALSE)

log_sort_pvals<-(-log10(sort_pvals))
log_exp_pvals<-(-log10(exp_pvals))

plot(log_exp_pvals, log_sort_pvals, xlab="-log10(expected P-value)", ylab="-log10(observed P-value)", pch=19)

abline(0,1, h=5, col=2, lty=2)

setwd("C:/Users/Elizabeth/Documents/Data")
zz=read.table('pheno.sim.2014-2.txt',header=TRUE)

quantile(zz$glucose_mmolperL,0.25)
#25% of individuals are below 4.768756

quantile(zz$glucose_mmolperL,0.75)
#75% of individuals are below 7.354975

hist(zz$glucose_mmolperL, xlab="glucose (mm/L)", main="Histogram", las=1)
lowtail<-quantile(zz$glucose_mmolperL,0.25)
hightail<-quantile(zz$glucose_mmolperL,0.75)
abline(v=lowtail, col=4)
abline(v=hightail, col=2)

