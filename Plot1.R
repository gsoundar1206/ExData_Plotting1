# Reading the text file
Data <- read.table("C:/Users/gsoundar/Desktop/R Programming/EDAData1/household_power_consumption.txt", sep = ";",
                         header = TRUE, stringsAsFactors = FALSE)

# Subsetting the specific range od Date
dateData <- Data[Data$Date %in% c("1/2/2007","2/2/2007") ,]

# Converting to numeric and plotting the histogram in .png format
dateData$Global_active_power <- as.numeric(dateData$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(dateData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

dev.cur()
