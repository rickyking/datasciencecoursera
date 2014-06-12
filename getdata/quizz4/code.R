
#Q1
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", "q1.csv")
q1 <- read.csv("q1.csv")
tt <- sapply(names(q1), strsplit, split="wgtp")
tt[123]

#Q2
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", "q2.csv")
q2 <- read.csv("q2.csv")

q2 <- q2[q2$X != "",]
q2 <- q2[q2$"Gross.domestic.product.2012" != "",]

dim(q2)
tt <- as.character(q2$"X.3")
ttt <- gsub("\\,", "",tt)
mean(as.numeric(ttt))

#Q3
q3 <- q2$"X.2"
grep("^United", q3)

#Q4
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", "q4.csv")
q4 <- read.csv("q4.csv", stringsAsFactors=F)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", "q4_1.csv")
q4_1 <- read.csv("q4_1.csv", stringsAsFactors = F)

q4 <- q4[q4$X!="",]

dim(q4)
dim(q4_1)

names(q4)

tt <- merge(q4_1, q4, by.x = "CountryCode", by.y = "X")
dim(tt)

str(tt)

ttt<- tt[tt$"Gross.domestic.product.2012"!="",]
dim(ttt)

ttt$"Gross.domestic.product.2012" <- as.numeric(ttt$"Gross.domestic.product.2012")
tttt <- ttt[order(ttt$"Gross.domestic.product.2012", decreasing = T),]

q4 <- tttt[grepl("Fiscal year end",tttt$Special.Notes),]
dim(q4)

sum(grepl("June", q4$Special.Notes, ignore.case=T))

#Q5
install.packages("quantmod")
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn) 
require(lubridate)
q5 <- ymd(sampleTimes)
sum(year(q5) == 2012)
sum(weekdays(q5[year(q5) == 2012]) == "lundi")
