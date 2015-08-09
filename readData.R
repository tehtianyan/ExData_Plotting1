
# Reading the results
d = read.table("household_power_consumption.txt", sep=";", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),na.strings ="?", skip = 1)
d <- data.table(d)
dim(d) # 2075259       9
d <- subset(d, d$Date == "1/2/2007" | d$Date == "2/2/2007")
dim(d) # 2880    9
x <- paste(d$Date, d$Time)
DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
d <- cbind(d, DateTime)




