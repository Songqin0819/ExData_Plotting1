#exploratory data analysis project 1_plot1
#Read the data into R
e_power_con<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?",colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

#subset the data from 2007-02-01 and 2007-02-02
e_power_con1 <- e_power_con[e_power_con$Date %in% c("1/2/2007","2/2/2007"),]


#remove NAs
e_power_con2<-na.omit(e_power_con1)

#plot the histogram
hist(e_power_con2$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

#save plot.1
dev.copy(png,"plot1.png",width = 480, height = 480)

#device off
dev.off()

