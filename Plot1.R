# Plot 1
source("readData.R")
png(filename="plot1.png",  width = 480, height = 480, units = "px", bg = "transparent")
hist(d$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red", ylim = c(0, 1200))
dev.off()
