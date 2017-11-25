# Reading the text file
Data <- read.table("C:/Users/gsoundar/Desktop/R Programming/EDAData1/household_power_consumption.txt", sep = ";",
                   header = TRUE, stringsAsFactors = FALSE)

# Subsetting the specific range od Date
dateData <- Data[Data$Date %in% c("1/2/2007","2/2/2007") ,]

# plotting the graph
datetime <- strptime(paste(dateData$Date, dateData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480)
plot(datetime, dateData$Global_active_power, type="l", xlab = " ",  ylab="Global Active Power (kilowatts)")
dev.off()
dev.cur()
