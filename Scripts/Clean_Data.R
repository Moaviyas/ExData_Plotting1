
householdFile <- "./Data/household_power_consumption.txt"
plotData <- read.table(householdFile,header = TRUE , sep = ";" ,na.strings = "?")
## set time variable
finalData <-plotData[plotData$Date  %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(SetTime, finalData)
