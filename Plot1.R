## Electric Power Consumption

# Reading Data

my_data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?",
                    nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

# Subsetting the data to what we need 
# 2-day Period in February 2007 

data_1 <- subset(my_data, Date %in% c("1/2/2007", "2/2/2007"))


# Plotting the frequency of Global Active Power from 1st to 2nd February 2007

hist(data_1$Global_active_power, main= "Global Active Power", xlab = "Global Active Power (kilowatts)"
     , ylab = "Frequency", col = "Red")
