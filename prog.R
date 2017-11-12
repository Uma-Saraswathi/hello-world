library(readr)
Book<- read_csv("~/R/Book.csv")
View(Book)

print(getwd())

site.df<-read.csv(paste("C:/Users/DELL/Documents/R/Book.csv",sep=""))
View(site.df)

png (file="Limit vs WorkDone.png")
plot(x=site.df$LIMIT,y=site.df$DONE,xlab="Limit",ylab="workdone",col="blue")
dev.off()

relation<-lm(site.df$LIMIT~site.df$DONE)
print(relation)
print(summary(relation))

png(file="Limit.png")
boxplot(site.df$LIMIT,xlab="Limit",ylab="Workdone",main="site",horizontal = TRUE)
dev.off()

png(file="WorkDone.png")
boxplot(site.df$DONE,xlab="Limit",ylab="workdone",main="Site",vertical=TRUE)
dev.off()