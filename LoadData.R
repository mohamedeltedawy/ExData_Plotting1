library(skimr)

#read all data
data_full <- read.table("household_power_consumption.txt" ,sep = ";" , header = TRUE , na.strings = "?")
data_full$Date <- as.Date(data_full$Date , format="%d/%m/%Y")

#subset data
data <- subset(data_full , Date >="2007-02-01" & Date <= "2007-02-02")
datetime <- paste(data$Date , data$Time)
data$Datetime <- as.POSIXct(datetime)

skim(data)