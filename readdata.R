#!/usr/bin/Rstript
#
#	readdata.R	
#

readdata <- function() {

temp <- tempfile()
#url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#download.file(url, "power.dat")
D <- read.table(
		file = unz("exdata-data-household_power_consumption.zip", "household_power_consumption.txt"),
		sep = ";",
		header = TRUE)
unlink(temp)

D$DateTime <- strptime(paste(D$Date, D$Time), "%d/%m/%Y %H:%M:%S")

D$Date <- as.Date(D$Date, format = "%d/%m/%Y")
fmt <- "%Y-%m-%d"
H <- D[D$Date %in% c(as.Date("2007-02-01", fmt), as.Date("2007-02-02", fmt)), ]
H$Global_active_power <- as.numeric(H$Global_active_power)
H$Global_reactive_power <- as.numeric(H$Global_reactive_power)
H$Sub_metering_1 <- as.numeric(H$Sub_metering_1)
H$Sub_metering_2 <- as.numeric(H$Sub_metering_2)
H$Sub_metering_3 <- as.numeric(H$Sub_metering_3)
H$Voltage <- as.numeric(H$Voltage)

H
}
