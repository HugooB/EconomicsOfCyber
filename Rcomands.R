setwd("~/TU Delft/Collegejaar 2016-2017/Economics of Cybersecurity")
spamdata <-read.csv("SpamHause_SPSS_Final.csv", header = TRUE, sep=";")
summary(spam)
aggregate(Country ~ Diagnostic, summary, data=spamdata)

fileConn<-file("output.txt")
writeLines(c("Hello","World"), fileConn)
close(fileConn)