source("LoadData.R")

with(data, {
     plot(data$Datetime , data$Sub_metering_1, col="black" , type = "l",
          ylab="Global Active Power (kilowatts)", xlab="")
     lines(data$Datetime , data$Sub_metering_2, col ="red")
     lines(data$Datetime , data$Sub_metering_3, col ="blue")
  })

legend("topright" , col = c("black" ,"red" ,"blue"),
       lty = 1, lwd =1,
       legend = c("Sub_metering_1" ,"Sub_metering_2" ,"Sub_metering_3"))

dev.copy(png , file="plot3.png" , height =480 ,width=480)
dev.off()