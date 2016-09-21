x<-1:9
for(ii in x){
  if(ii<9){cat("\n")}
  else{cat("*\n")}
  } 
for(ii in 1:19){
  if(ii%%2){cat("*")}
  else{cat("&")}
}
##Dogs initial value = 10, 1st=11, 2nd=12, 3rd=13, 4th=14, 5th/end=15
##Meatloaf initial value = 0, 1st= -4, 2nd= -9, 3rd = -15, 4th = -22, 5th/End = -30
##Bubbles initial value = 12, 1st = -1, 2nd = -2, 3rd = -3, 4th = -4
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
  }
  if(years[ii] %% 4 == 0){
    cat(years[ii], 'Hooray, presidential elections!', sep = '\t', fill = T)
  }
}
bankAccounts<-c(10, 9.2, 5.6, 3.7, 8.8, 0.5)
compounded<-rep(0,6)
interestRate<-0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i];
  }
bankAccounts<-c(10, 9.2, 5.6); 
interestRate<-0.0525;   
house<-c(4.8, 3.8, 5.7); 
food<-c(3.5, 4.3, 5.0);    
fun<-c(7.8, 2.1, 10.5);  
income <- c(21, 21, 21); 

for (j in 1:5) {
  for (i in 1:length(bankAccounts)){
    bankAccounts[i]<-(bankAccounts[i]-house[i]-food[i]-fun[i]+income[i])*(1+interestRate)
  }
}

Years<-c(2015,2016,2017,2018,2019,2020)
for (j in 1:length(Years)) {
  if(Years[j]%%2==1){
    bankAccounts[1]=bankAccounts[1]+5000
    bankAccounts[3]=bankAccounts[3]+5000
  }
  
  for (i in 1:length(bankAccounts)){
    bankAccounts[i]<-(bankAccounts[i]-house[i]-food[i]-fun[i]+income[i])*(1+interestRate)
  }
}

xsum<-0
x<-1
while(x<=17){
  xsum=xsum+x
  x=x+1
}
number<-function(x){
  if (x<= -1){
    cat("small")
  }
  else if (x>-1&&x<1){
    cat("medium")
  }
  else if (x>1){
    cat("big")
  }
}
