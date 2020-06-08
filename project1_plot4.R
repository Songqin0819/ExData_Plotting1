#exploratory data analysis project 1_plot4
#Read the data into R
e_power_con<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?",colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

#subset the data from 2007-02-01 and 2007-02-02
e_power_con1 <- e_power_con[e_power_con$Date %in% c("1/2/2007","2/2/2007"),]

#remove NAs
e_power_con2<-na.omit(e_power_con1)

#device on
png(filename = "plot4.png", width = 480, height = 480)

#set the layout 
par(mfrow=c(2,2))
#plot the first graph
plot(e_power_con2$DateTime, e_power_con2$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")
#plot the second graph
plot(e_power_con2$DateTime, e_power_con2$Voltage, type="l", col="black", xlab="datetime", ylab="Voltage")
#plot the third graph
plot(e_power_con2$DateTime, e_power_con2$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l',col = "black")  
lines(e_power_con2$DateTime, e_power_con2$Sub_metering_2, col = 'red')  
lines(e_power_con2$DateTime, e_power_con2$Sub_metering_3, col = 'blue')  
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), bty="n",lwd = c(1,1,1))  
#plot the fourth graph
plot(e_power_con2$DateTime, e_power_con2$Global_reactive_power, type="l", col="black", xlab="datetime", ylab="Global_reactive_power")

#device off
dev.off()
