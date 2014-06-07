#!/usr/bin/Rstript
#
#	plot3.R
#

Sys.setlocale("LC_TIME", "en_US.UTF-8")
source("readdata.R")

D <- readdata()
attach(D)

png(file = "plot3.png")
plot(
	DateTime,
	Sub_metering_1,
	type = "l",
	xlab = "",
	ylab = "Energy sub metering",
	col = "black")
points(DateTime, Sub_metering_2, col = "red", type = "l")
points(DateTime, Sub_metering_3, col = "blue", type = "l")
legend("topright", lty = 1, col = c("black", "red", "blue"),
	legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
