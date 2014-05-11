#WARNING: Do not run this .R code independently. Run it through main.R

#Creating the .png image
png(filename="plot3.png", width = 480, height = 480)

#Plotting
with(origDataClean, plot(Sub_metering_1~DateTime, type="l", ylab="Energy sub metering", xlab=""))

with(origDataClean, lines(Sub_metering_2~DateTime, col = "red"))

with(origDataClean, lines(Sub_metering_3~DateTime, col = "blue"))

legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1,  col=c("black","red","blue"))

#Closing the device
dev.off()


