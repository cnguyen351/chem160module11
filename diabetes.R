setwd("C:/docs (3rd year)/chem160module11")
diabetes <- read.table("diabetes.txt",header=T)
model<-lm(glucose~.,data=diabetes)
step(model)
model<-lm(glucose~1,data=diabetes)
step(model,direction="forward",
     scope=list(upper=terms(glucose~.,data=diabetes)))
