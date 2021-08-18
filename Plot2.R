## Electric Power Consumption

# Reading Data

my_data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?",
                    nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

# Subsetting the data to what we need 
# 2-day Period in February 2007 

data_1 <- subset(my_data, Date %in% c("1/2/2007", "2/2/2007"))

#Formatting Date

data_1$Date <- as.Date(data_1$Date, format = "%d/%m/%Y")

datetime <- paste(as.Date(data_1$Date), data_1$Time)
data_1$Datetime <- as.POSIXct(datetime)

## Plot 2

with(data_1, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})
