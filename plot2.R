#WARNING: Do not run this .R code independently. Run it through main.R

#Creating .png file    
png(filename="plot2.png", width = 480, height = 480)

#Plotting
with(origDataClean, plot(Global_active_power~DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab=""))

#Closing the device
dev.off()
