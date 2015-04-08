# All data loading encapsulated in load_data, 
# which also adds combined DateTime column
source("load_data.R")
# Init png device with correct dimension
png("plot1.png", width=504, height=504)
# Draw plot
hist(data$Global_active_power,
     col='red',main='Global Active Power',
     xlab='Global Active Power (kilowatts)'
     )
# Close device
dev.off()