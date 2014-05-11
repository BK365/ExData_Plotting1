data <- read.table("C:/Users/antisense/Desktop/household_power_consumption.txt", comment.char = "", header = FALSE, sep = ";", skip =66637, nrows =2879)
names(data) <- c("Date","Time","Global Active Power","Global Reactive Power","Voltage","Global Intensity","Sub Metering 1", "Sub Metering 2","Sub Metering 3")
x <- data[,"Time"]
y <- data[,"Global Active Power"]
z <- paste(data[,"Date"],data[,"Time"])
datetime <- strptime(z, "%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png", width = 480, height = 480)
plot(datetime,y,ylab = "Global Active Power (kilowatts)", type="l",xlab="")
dev.off()