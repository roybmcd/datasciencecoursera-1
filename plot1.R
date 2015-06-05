## Load data, isolating only 2007-02-01 and 2007-02-02

data <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = ("?"))
data[,1] <- as.Date(data$Date, "%d/%m/%Y")
data2 <- subset(data, data$Date == "2007-02-01" | data$Date == "2007-02-02")

rm(data)


#Construct Histogram, with frequency of apparition as Y, and Global Active Power in kW( col 3) as X.
# Saving as PNG, of size 480 x 480, titled plot1.png

png(filename = "plot1.png")

hist(data2$Global_active_power,main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

dev.off()


