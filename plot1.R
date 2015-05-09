#setwd done in the console not in program

household_power_consumption <- read.csv("~/Documents/Coursera/R/Exploritory Data Analysis/household_power_consumption.txt", sep=";")

household<-household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007"),]

activePower <- as.numeric(household$Global_active_power)
png("plot1.png", width=480, height=480)
hist(activePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()