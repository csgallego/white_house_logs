#Cleaning the dates of the White House visitor logs

z = strptime(visits$APPT_START_DATE,format="%m/%d/%Y %H:%M") 
class(z)
head(visits$APPT_START_DATE)
visits$APPT_START_DATE[z$year < 0]
gsub("/13 ","/2013 ",visits$APPT_START_DATE)
visits$CAPPT_START_DATE = gsub("/13 ","/2013 ",visits$APPT_START_DATE)
z = strptime(visits$CAPPT_START_DATE,format="%m/%d/%Y %H:%M")
is.na(z)
sum(is.na(z))
visits$CAPPT_START_DATE[is.na(z)]
visits$CAPPT_START_DATE = gsub("\\/13$","\\/2013",visits$CAPPT_START_DATE)
visits$CAPPT_START_DATE = gsub("\\/13$","\\/2013",visits$CAPPT_START_DATE) 
z[is.na(z)] = strptime(visits$CAPPT_START_DATE[is.na(z)],format="%m/%d/%Y") 
visits$time = z
range(z)
tick = strptime("12/31/2012 00:00",format="%m/%d/%Y %H:%M")
visits[visits$time < tick,1:5]
visits = visits[visits$time > tick,]
barplot(table(visits$time$mon+1))
hist(visits$time$yday,breaks=1000)
