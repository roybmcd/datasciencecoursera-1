## Load data, isolating only 2007-02-01 and 2007-02-02

data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = ("?"))
data[,1] <- as.Date(data$Date, "%d/%m/%Y")
data2 <- subset(data, data$Date == "2007-02-01" | data$Date == "2007-02-02")

rm(data)


#Construct plot, with Global Active Power in kW( col 3) as Y, and date+time as X.
# Saving as PNG, of size 480 x 480, titled plot2.png

png(filename = "plot2.png")

plot(as.POSIXct(paste(data2$Date, data2$Time), format = "%Y-%m-%d %H:%M:%S"), data2$Global_active_power, type = "l", main = NULL, ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()

