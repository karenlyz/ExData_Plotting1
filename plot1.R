dataSub <- read.table("household_power_consumption.txt",skip = 66637, nrow = 2880, sep = ";", 
                      col.names = colnames(read.table("household_power_consumption.txt", nrow = 1, header = TRUE, sep=";")))
png(filename="plot1.png")
hist(as.numeric(as.character(dataSub$Global_active_power)),
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)"
)
dev.off()






