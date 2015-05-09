household_power_consumption <- read.csv("~/Documents/Coursera/R/Exploritory Data Analysis/household_power_consumption.txt", sep=";")

household<-household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007"),]

activePower <- as.numeric(household$Global_active_power)
datetime <- strptime(paste(household$Date, household$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, activePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()