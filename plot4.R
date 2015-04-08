# All data loading encapsulated in load_data, 
# which also adds combined DateTime column
source("load_data.R")
# Init png device with correct dimension
png("plot4.png", width=504, height=504)
# Set canvas as 2x2 dimensional space
par(mfrow = c(2, 2))
# This is needed for english week names on non-en locales
Sys.setlocale("LC_ALL", 'en_US.UTF-8')
# Draw all 4 graphs
with(data, {
  plot(DateTime,
       Global_active_power,
       type='l', 
       ylab='Global Active Power',
       xlab=''
       )
  plot(DateTime,Voltage,type='l', xlab='datetime')
  plot(DateTime,
       Sub_metering_1,
       type='l',
       ylab="Energy sub metering",
       xlab='',
       col="black"
       )
  lines(DateTime,Sub_metering_2,col='red')
  lines(DateTime,Sub_metering_3,col='blue')
  legend("topright",
         names(data)[7:9], 
         lty = 1, 
         col = c("black", "red", "blue"), 
         bty='n'
         )
  plot(DateTime,Global_reactive_power,type='l', xlab='datetime')
})
# Close device
dev.off()