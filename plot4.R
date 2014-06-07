#!/usr/bin/Rstript
#
#	plot2.R
#

fmt <- "%Y-%m-%d"
png(file = "plot2.png")

plot2 <- function(D) {
	plot(
		D$DateTime,
		D$Global_active_power / 1000,
		type = "l",
		xlab = "",
		ylab = "Global Active Power (kilowatts)")

}

plot3 <- function(D) {
	plot(
		D$DateTime,
		D$Sub_metering_1,
		type = "l",
		xlab = "",
		ylab = "Energy sub metering",
		col = "black")
		points(D$DateTime, D$Sub_metering_2, col = "red", type = "l")
		points(D$DateTime, D$Sub_metering_3, col = "blue", type = "l")
	legend("topright", lty = 1, col = c("black", "red", "blue"),
		legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

}

plot5 <- function(D) {
	plot(
		D$DateTime,
		D$Voltage,
		type = "l",
		ylab = "Voltage",
		xlab = "datetiem")
}

plot6 <- function(D) {
	plot(
		D$DateTime,
		D$Global_reactive_power,
		type = "l",
		ylab = "Global_reactive_power",
		xlab = "datetiem")
}

source("readdata.R")
source("readdata.R")
Sys.setlocale("LC_TIME", "en_US.UTF-8")

### READ DATA ###
D <- readdata()
### PLOT ###
png(file = "plot4.png")
par(mfrow = c(2,2))
plot2(D)
plot5(D)
plot3(D)
plot6(D)
dev.off()

