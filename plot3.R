# All data loading encapsulated in load_data, 
# which also adds combined DateTime column
source("load_data.R")
# Init png device with correct dimension
png("plot3.png", width=504, height=504)
# This is needed for english week names on non-en locales
Sys.setlocale("LC_ALL", 'en_US.UTF-8')
with(data, {
  # Draw plot
  plot(DateTime,
       Sub_metering_1,type='l',
       ylab="Energy sub metering",
       xlab='',
       col="black"
       )
  # Add color lines for sub meters
  lines(DateTime,Sub_metering_2,col='red')
  lines(DateTime,Sub_metering_3,col='blue')
})
# Add legend
legend("topright",names(data)[7:9], lty = 1, col = c("black", "red", "blue"))
# Close device
dev.off()