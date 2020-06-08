#exploratory data analysis project 1_plot2
#Read the data into R
e_power_con<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?",colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

#subset the data from 2007-02-01 and 2007-02-02
e_power_con1 <- e_power_con[e_power_con$Date %in% c("1/2/2007","2/2/2007"),]

#remove NAs
e_power_con2<-na.omit(e_power_con1)

#change the date and time format

e_power_con2$DateTime <-strptime(paste(e_power_con2$Date, e_power_con2$Time, sep=" "),"%d/%m/%Y %H:%M:%S")

#device on
png(filename = "plot2.png", width = 480, height = 480)

#plot the graph
plot(e_power_con2$DateTime, e_power_con2$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")

#device off
dev.off()
