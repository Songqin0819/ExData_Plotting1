#exploratory data analysis project 1_plot3
#Read the data into R
e_power_con<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?",colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

#subset the data from 2007-02-01 and 2007-02-02
e_power_con1 <- e_power_con[e_power_con$Date %in% c("1/2/2007","2/2/2007"),]

#remove NAs
e_power_con2<-na.omit(e_power_con1)

#plot the graph
plot(e_power_con2$DateTime, e_power_con2$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l',col = "black")  
lines(e_power_con2$DateTime, e_power_con2$Sub_metering_2, col = 'red')  
lines(e_power_con2$DateTime, e_power_con2$Sub_metering_3, col = 'blue')  
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = c(1,1,1))  

#save plot.3
dev.copy(png,"plot3.png",width = 480, height = 480)

#device off
dev.off()
