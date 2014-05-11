#WARNING: Do not run this .R code independently. Run it through main.R


png(filename="plot1.png", width = 480, height = 480)
hist(as.numeric(origDataClean$Global_active_power), xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power",xlim=c(0, 6),ylim=c(0, 1200))
dev.off()
