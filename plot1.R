#!/usr/bin/Rstript
#
#	plot2.R
#

source("readdata.R")

D <- readdata()

png(file = "plot1.png")
#D$Global_active_power <- as.numeric(D$Global_active_power)
str(D)
hist(
	D$Global_active_power / 1000,
	col = "red",
	main = "Global Active Power",
	xlab = "Global Active Power (kilowatts)")

dev.off()
