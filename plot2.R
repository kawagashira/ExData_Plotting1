#!/usr/bin/Rstript
#
#	plot2.R
#

#Sys.setenv("LANGUAGE", "En")
#Sys.setlocale("LC_ALL", "English")
Sys.setlocale("LC_TIME", "en_US.UTF-8")
source("readdata.R")

D <- readdata()
str(D)
head(D)
summary(D$Global_active_power)

fmt <- "%Y-%m-%d"
png(file = "plot2.png")
plot(
	D$DateTime,
	D$Global_active_power / 1000,
	type = "l",
	xlab = "",
	ylab = "Global Active Power (kilowatts)")
	#ylim = c(0,10))
	#xlim = c(as.Date("2007-02-01", fmt), as.Date("2007-02-02", fmt)),

dev.off()
