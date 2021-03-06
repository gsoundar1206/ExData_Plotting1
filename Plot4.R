# Reading the text file
Data <- read.table("C:/Users/gsoundar/Desktop/R Programming/EDAData1/household_power_consumption.txt", sep = ";",
                   header = TRUE, stringsAsFactors = FALSE)

# Subsetting the specific range od Date
dateData <- Data[Data$Date %in% c("1/2/2007","2/2/2007") ,]

#Plotting the graph
datetime <- strptime(paste(dateData$Date, dateData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot4.png", width = 480, height = 480)
par(mfcol = c(2, 2))
plot(datetime, dateData$Global_active_power, type="l", xlab = " ",  ylab="Global Active Power (kilowatts)")
plot(datetime, dateData$Sub_metering_1, type = "l", xlab =" ", ylab = "Energy Sub Metering")
points(datetime, dateData$Sub_metering_2, col = "red")
points(datetime, dateData$Sub_metering_3, col = "blue", type = "l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2, col=c("black", "red", "blue"))
plot(datetime, dateData$Voltage, type = "l", ylab = "Voltage")
plot(datetime, dateData$Global_reactive_power, type = "l", ylab = "Global_reactive_power")
dev.off()
