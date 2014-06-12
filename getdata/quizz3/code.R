setwd("/Users/yjin/Dropbox/01.02.Study Notes/datasciencecoursera/getdata/quizz3/")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", "q1.csv", method = "curl")

dat <- read.csv("q1.csv")
str(dat)

# q1
v <- which(dat$ACR == 3 & dat$AGS == 6)
head(v, 3)

# q2
require(jpeg)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg", "q2.jpg", method = "curl")
??jpeg
q2 <- readJPEG("q2.jpg", native = T)
quantile(q2, c(.3,.8))

# q3
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", "q3.csv", method = "curl")
q3 <- read.csv("q3.csv", stringsAsFactors=F)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", "q3_1.csv", method ="curl")
q3_1 <- read.csv("q3_1.csv", stringsAsFactors = F)

q3 <- q3[q3$X!="",]

dim(q3)
dim(q3_1)

names(q3)

tt <- merge(q3_1, q3, by.x = "CountryCode", by.y = "X")
dim(tt)

str(tt)

ttt<- tt[tt$"Gross.domestic.product.2012"!="",]
dim(ttt)

ttt$"Gross.domestic.product.2012" <- as.numeric(ttt$"Gross.domestic.product.2012")
tttt <- ttt[order(ttt$"Gross.domestic.product.2012", decreasing = T),]

head(tttt, 13)
# q4
q4<-tttt
q4<-tttt[tttt$Income.Group %in% c("High income: OECD", "High income: nonOECD"), ]
tapply(q4$"Gross.domestic.product.2012",q4$Income.Group, mean)

# q5
require(plyr)
q5<-tttt
q5$grouped<-cut2(tttt$"Gross.domestic.product.2012", g=5)

table(q5$grouped, q5$Income.Group)