dataSub <- read.table("household_power_consumption.txt",skip = 66637, nrow = 2880, sep = ";", 
                      col.names = colnames(read.table("household_power_consumption.txt", nrow = 1, header = TRUE, sep=";")))
date_time<-paste(dataSub$Date,dataSub$Time, sep=" ")
date_time<-strptime(date_time, "%d/%m/%Y %H:%M:%S")
png(filename="plot2.png")
plot(date_time,dataSub$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()