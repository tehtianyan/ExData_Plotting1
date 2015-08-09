# Plot 4
source("readData.R")
png(filename="plot4.png",  width = 480, height = 480, units = "px", bg = "transparent")
par(mfcol = c(2,2))

# first plot
plot(d$Global_active_power ~ d$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab = "")

# second plot
plot(d$DateTime, d$Sub_metering_1 , type="l", ylab="Energy sub metering", xlab = "", col = "black")
lines(d$DateTime, d$Sub_metering_2, col = "red")
lines(d$DateTime, d$Sub_metering_3, col = "blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")

# third plot
plot(d$Voltage ~ d$DateTime, type="l", ylab="Voltage", xlab = "datetime")

# fourth plot
plot(d$Global_reactive_power ~ d$DateTime, type="l", ylab="Global_reactive_power", xlab = "datetime")
dev.off()