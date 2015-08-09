# Plot 3
source("readData.R")
png(filename="plot3.png",  width = 480, height = 480, units = "px", bg = "transparent")
plot(d$DateTime, d$Sub_metering_1 , type="l", ylab="Energy sub metering", xlab = "", col = "black")
lines(d$DateTime, d$Sub_metering_2, col = "red")
lines(d$DateTime, d$Sub_metering_3, col = "blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
