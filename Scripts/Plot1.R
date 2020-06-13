# load data
source('scripts/get_and_clean_data.R')
# open device
png(filename='plots/plot1.png',width=480,height=480,units='px')

# plot data
hist(finalData$Global_active_power ,main ="Global Active Power",xlab='Global Active Power (kilowatts)',col='red')
        
# Turn off device
dev.off()