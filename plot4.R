## Load data, isolating only 2007-02-01 and 2007-02-02

data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = ("?"))
data[,1] <- as.Date(data$Date, "%d/%m/%Y")
data2 <- subset(data, data$Date == "2007-02-01" | data$Date == "2007-02-02")

rm(data)


#Construct plots
# Saving as PNG, of size 480 x 480, titled plot4.png

timeframe = as.POSIXct(paste(data2$Date, data2$Time), format = "%Y-%m-%d %H:%M:%S")


png(filename = "plot4.png")

par(mfrow = c(2,2))

#top left
plot(timeframe, data2$Global_active_power, type = "l", main = NULL, ylab = "Global Active Power", xlab = "")

#top right
plot(timeframe, data2$Voltage, type = "l", main = NULL, ylab = "Voltage", xlab = "datetime")

#bottom left
plot(timeframe, data2$Sub_metering_1, type = "n",ylab = "Energy sub metering", xlab = "")
lines(timeframe, data2$Sub_metering_1, col = "black")
lines(timeframe, data2$Sub_metering_2, col = "red")
lines(timeframe, data2$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c('black', 'red', 'blue'),bty = "n")

#bottom right
plot(timeframe, data2$Global_reactive_power, type = "l", main = NULL, ylab = "Global_reactive_power", xlab = "datetime")


dev.off()
