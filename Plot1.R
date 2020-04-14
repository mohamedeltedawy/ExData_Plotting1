source("LoadData.R")

hist(data$Global_active_power , main ="Global Active Power" ,
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequancy", col = "red")

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
