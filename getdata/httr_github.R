library(httr)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. Register an application at https://github.com/settings/applications
#    Insert your values below - if secret is omitted, it will look it up in
#    the GITHUB_CONSUMER_SECRET environmental variable.
#
#    Use http://localhost:1410 as the callback url
myapp <- oauth_app("github", "8deef461dd88180b25bf", "1dab8cd5c24e255658e0dda6c0743cbc68041083")

# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
req <- GET("https://api.github.com/rate_limit", config(token = github_token))
stop_for_status(req)
content(req)

### Q1

req <- GET("https://api.github.com/users/jtleek/repos", config(token = github_token))
stop_for_status(req)
json <- content(req, type = "text")
str(json)
df <- jsonlite::fromJSON(json)

str(df)
colnames(df)

which(df$name == "datasharing")

df[4,45]

### Q2
acs <- read.csv("getdata-data-ss06pid.csv")
require(sqldf)
sqldf("select * from acs where AGEP < 50")

### Q4
con = url("http://biostat.jhsph.edu/~jleek/contact.html")
tt<-readLines(con)
str(tt)
nchar(tt[10])
# [1] 45
nchar(tt[20])
# [1] 31
nchar(tt[30])
# [1] 7
nchar(tt[100])
# [1] 25

### Q5
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for", 
	"/Users/yjin/Dropbox/01.02.Study Notes/datasciencecoursera/getdata/quizz2/getdata%2Fwksst8110.for", 
	mode = "wb", method="curl")
?read.table
tt<-read.fwf(
  file=url("http://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"),
  skip=4,
  widths=c(12, 7,4, 9,4, 9,4, 9,4))
str(tt)
sum(tt[,4])

