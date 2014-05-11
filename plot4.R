#WARNING: Do not run this .R code independently. Run it through main.R

#Creating the .png device
png(filename="plot4.png", width = 480, height = 480)

#Plotting
par(mfrow = c(2,2))

#1st Plot
with(origDataClean, plot(Global_active_power~DateTime, type="l", ylab="Global Active Power", xlab=""))     

#2nd Plot
with(origDataClean, plot(Voltage~DateTime, type="l", ylab="Voltage",xlab="datetime"))  

#3rd Plot 
with(origDataClean, plot(Sub_metering_1~DateTime, type="l", ylab="Energy sub metering", xlab=""))
with(origDataClean, lines(Sub_metering_2~DateTime, col = "red"))
with(origDataClean, lines(Sub_metering_3~DateTime, col = "blue"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1,  col=c("black","red","blue"))

#3rd Plot
with(origDataClean, plot(Global_reactive_power~DateTime, type="l", ylab="Global_reactive_power",xlab="datetime")) 


#Closing the device
dev.off()


