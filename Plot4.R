source("LoadData.R")

par(mfrow=c(2,2) , mar =c(4,4,2,1))

#plot 1
plot(data$Datetime , data$Global_active_power , type = "l" ,col="black",
     xlab = "" , ylab = "Global Active Power")

#plot 2     
plot(data$Datetime , data$Voltage , type = "l" ,col= "black" ,
     xlab = "datetime" , ylab ="Voltage")


#plot 3
with(data, {
  plot(data$Datetime , data$Sub_metering_1, col="black" , type = "l",
       ylab="Energy sub metering", xlab="")
  lines(data$Datetime , data$Sub_metering_2, col ="red")
  lines(data$Datetime , data$Sub_metering_3, col ="blue")
})
legend("topright" , col = c("black" ,"red" ,"blue"),
       lty = 1, lwd =1,
       legend = c("Sub_metering_1" ,"Sub_metering_2" ,"Sub_metering_3"))


#plot 4
plot(data$Datetime , data$Global_reactive_power , type = "l" ,
     xlab = "datetime" , ylab = "Global_reactive_power")


dev.copy(png , file="plot4.png" ,height = 480 , width =480)
dev.off()