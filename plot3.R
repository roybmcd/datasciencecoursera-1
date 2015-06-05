## Load data, isolating only 2007-02-01 and 2007-02-02

data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = ("?"))
data[,1] <- as.Date(data$Date, "%d/%m/%Y")
data2 <- subset(data, data$Date == "2007-02-01" | data$Date == "2007-02-02")

rm(data)


#Construct plot, with sub metering values as Y, and date+time as X.
# Saving as PNG, of size 480 x 480, titled plot3.png

timeframe = as.POSIXct(paste(data2$Date, data2$Time), format = "%Y-%m-%d %H:%M:%S")

png(filename = "plot3.png")

plot(timeframe, data2$Sub_metering_1, type = "n",ylab = "Energy sub metering", xlab = "")
lines(timeframe, data2$Sub_metering_1, col = "black")
lines(timeframe, data2$Sub_metering_2, col = "red")
lines(timeframe, data2$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c('black', 'red', 'blue'))

dev.off()
