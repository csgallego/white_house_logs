#We create vector named "visitee"
visitee=paste(visits$visitee_namefirst,visits$visite_namelast) 
visitee=tolower(iconv(visitee,to=“UTF-8”) 
tail(sort(table(visitee)), 30)

#I am creating “POTUS” that gives me every visitors who visited the President of the United States
POTUS=visits[visitee==“potus ”,]

#I’m making sure I include all the versions of POTUS possible
POTUS = visits[ tolower(visits$visitee_namefirst) == "potus" | tolower(visits$visitee_namelast) == "potus" ,]

#We created a subsrting of those who visited POTUS on June 5th
substr(POTUS$APPT_START_DATE, 1,5)

#Let’s make a histogram
hist(POTUS$time$yday,breaks=1000)

#We created a subsrting of those who visited POTUS on June 5th
POTUS[paste(POTUS$time$mon+1,POTUS$time$mday)=="6 5"]

#Lets look at only the full names
POTUS[paste(POTUS$time$mon+1,POTUS$time$mday)=="6 5",c("NAMEFIRST","NAMELAST")]

#Let’s look at only the 4 first columns
POTUS[paste(POTUS$time$mon+1,POTUS$time$mday)=="6 5",1:4]

#We want to add the “column” description which gives us interesting information (it is the column 27)
POTUS[paste(POTUS$time$mon+1,POTUS$time$mday)=="6 5",c(1:4,27)]

#We create June5 (which gives us with everybody who visited POTUS on June 5th)
June5=POTUS[paste(POTUS$time$mon+1,POTUS$time$mday)=="6 5",]

#Let’s create a table of June 5
table(June5$UIN)

