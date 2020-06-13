# load data
source('scripts/get_and_clean_data.R')

# open device
png(filename='plots/plot2.png',width=480,height=480,units='px')
# plot data
plot(finalData$SetTime, finalData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")

# Turn off device
dev.off()