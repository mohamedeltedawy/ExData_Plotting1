source("LoadData.R")

plot(data$Datetime , data$Global_active_power , type="l" ,
     ylab = "Global Active Power (kilowatt)",
     xlab = "")

dev.copy(png ,file="plot2.png", height=480, width=480)
dev.off()