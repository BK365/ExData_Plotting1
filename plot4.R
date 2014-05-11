data <- read.table("C:/Users/antisense/Desktop/household_power_consumption.txt", comment.char = "", header = FALSE, sep = ";", skip =66637, nrows =2879)
names(data) <- c("Date","Time","Global Active Power","Global Reactive Power","Voltage","Global Intensity","Sub Metering 1", "Sub Metering 2","Sub Metering 3")
z <- paste(data[,"Date"],data[,"Time"])
datetime <- strptime(z, "%d/%m/%Y %H:%M:%S")
y <- data[,"Global Active Power"]
volts <- data[,"Voltage"]
grp <- data[,"Global Reactive Power"]
sm1 <- data[,"Sub Metering 1"]
sm2 <- data[,"Sub Metering 2"]
sm3 <- data[,"Sub Metering 3"]
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
plot(datetime,y,ylab = "Global Active Power", type="l",xlab="")
plot(datetime,volts,xlab="datetime",type="l")
plot(datetime,sm1, type="l", ylab = "Energy sub metering",xlab="")
par(new=T)
plot(datetime,sm2, type="l", ylab = "", xlab="", axes="FALSE",ylim=range(0:38),col="red")
par(new=T)
plot(datetime,sm3, type="l", ylab = "", xlab="", axes="FALSE",ylim=range(0:38),col="blue")
legend("topright", legend = c("Sub_metering_1","Sub_Metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))
plot(datetime,grp,xlab="datetime",type="l",ylab="Global_reactive_power")
dev.off()