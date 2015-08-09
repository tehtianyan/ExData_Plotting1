# Plot 2
source("readData.R")
png(filename="plot2.png",  width = 480, height = 480, units = "px", bg = "transparent")
plot(d$Global_active_power ~ d$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab = "")
dev.off()
