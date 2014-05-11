#WARNING: Do not run this .R code independently. Run it through main.R

#Creating .png file     
png(filename="plot1.png", width = 480, height = 480)

#plotting
hist(as.numeric(origDataClean$Global_active_power), xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")

#Closing the device
dev.off()
