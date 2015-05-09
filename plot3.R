#setwd done in the console not in program

household_power_consumption <- read.csv("~/Documents/Coursera/R/Exploritory Data Analysis/household_power_consumption.txt", sep=";")
household<-household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007"),]



datetime <- strptime(paste(household$Date, household$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
activePower <- as.numeric(household$Global_active_power)
subMetering1 <- as.numeric(household$Sub_metering_1)
subMetering2 <- as.numeric(household$Sub_metering_2)
subMetering3 <- as.numeric(household$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()