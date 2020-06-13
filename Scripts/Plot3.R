# load data
source('scripts/get_and_clean_data.R')

# open device
png(filename='plots/plot3.png',width=480,height=480,units='px')


columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(finalData$SetTime, finalData$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(finalData$SetTime, finalData$Sub_metering_2, col=columnlines[2])
lines(finalData$SetTime, finalData$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")


# Turn off device
dev.off()