Datos <- read.table("household_power_consumption.txt", header= FALSE, sep=";", stringsAsFactors=FALSE, dec=".", nrows = 1440, skip = 66637)
Datos
summary(Datos)
globalActivePower <- as.numeric(Datos$V3)
globalReactivePower <- as.numeric(Datos$V4)
voltage <- as.numeric(Datos$V5)
subMetering1 <- as.numeric(Datos$V7)
subMetering2 <- as.numeric(Datos$V8)
subMetering3 <- as.numeric(Datos$V9)

par(mfrow = c(2, 2)) 

# First plot
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power")
# Second plot
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
# Third plot
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, col=c("black", "red", "blue"), bty="o")
# Fourth plot
plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")
