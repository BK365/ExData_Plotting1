data <- read.table("C:/Users/antisense/Desktop/household_power_consumption.txt", comment.char = "", header = FALSE, sep = ";", skip =66637, nrows =2879) ##Read File from WD at correct interval
names(data) <- c("Date","Time","Global Active Power","Global Reactive Power","Voltage","Global Intensity","Sub Metering 1", "Sub Metering 2","Sub Metering 3") ##Set Column names following Header
png(filename = "plot1.png", width = 480, height = 480) #Open Device for printing
hist(data$"Global Active Power",col = "red", main = "Global Active Power",xlab = "Global Active Power (kilowatts)") #Print histogram
dev.off() ##Close Device
