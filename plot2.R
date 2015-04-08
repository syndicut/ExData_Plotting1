# All data loading encapsulated in load_data, 
# which also adds combined DateTime column
source("load_data.R")
# Init png device with correct dimension
png("plot2.png", width=504, height=504)
# This is needed for english week names on non-en locales
Sys.setlocale("LC_ALL", 'en_US.UTF-8')
# Draw plot
plot(data$DateTime,
     data$Global_active_power,
     type='l', 
     ylab='Global Active Power (kilowatts)', 
     xlab=''
     )
# Close device
dev.off()