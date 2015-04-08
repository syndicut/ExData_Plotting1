# Data loading scripts assumes data is available at data/household_power_consumption.txt
# Load header only
data_names <- read.csv("data/household_power_consumption.txt",sep=';',nrows=1)
# Load only data for 2007-02-01-2007-02-02 using loaded header for column names
data <- read.csv("data/household_power_consumption.txt",
                 sep=';',
                 skip=66636,
                 nrows=2880,
                 na.strings='?',
                 col.names=names(data_names)
                 )
# Convert Date column to Date
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
# Add combined DateTime columnt for graphing purpose
data$DateTime <- strptime(paste(data$Date,data$Time),"%Y-%m-%d %H:%M:%S")