#We create vector named "visitee"
visitee=paste(visits$visitee_namefirst,visits$visite_namelast) 
visitee=tolower(iconv(visitee,to=“UTF-8”) 
tail(sort(table(visitee)), 30)
