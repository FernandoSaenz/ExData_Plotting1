install.packages("tidyverse")
library(ggplot2)
Datos <- read.table("household_power_consumption.txt", header= FALSE, sep=";", stringsAsFactors=FALSE, dec=".", nrows = 1440, skip = 66637)
Datos
summary(Datos)
globalActivePower <- as.numeric(Datos$V3)
globalReactivePower <- as.numeric(Datos$V4)
voltage <- as.numeric(Datos$V5)
subMetering1 <- as.numeric(Datos$V7)
subMetering2 <- as.numeric(Datos$V8)
subMetering3 <- as.numeric(Datos$V9)


hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
