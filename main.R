# File Name: main.R
# Purpose: To run other .R scripts in this project
# Written By: Jovan Sardinha
# Created On: May 10, 2014
# Email: jovan.sardinha@gmail.com
# Operating System: Windows 7 (32 bit)
# R Version: R version 3.1.0 (2014-04-10)  
# Github Repo: https://github.com/JovanSardinha/ExData_Plotting1


#changing working directory; Subject to change depending on location of this file.
#Delete!!!!!
wd <- "./Documents/GitHub/ExData_Plotting1"
setwd(wd)

#Packages
install.packages("lubridate")

#Libraries
library(lubridate)

#Setting up data directory if it does not exist
if(!file.exists("./data")){dir.create("./data")}

#Downloading the data file from UCI Machine Learning Repository
origDataURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
file <- paste("./data/", basename(origDataURL),sep = "")
download.file(origDataURL, file)
unzip(file, exdir = "./data")

#Setting up the path variables for data extraction
dataDir <- "./data"

#Loading general data in the R workspace
origData <- read.csv(paste(dataDir, "/household_power_consumption.txt", sep = ""), na.strings=c("?"), sep=";")

origDataClean <- origData

#Combining Date and Time columns
origDataClean <- within(origDataClean, DateTime <- paste(Date, Time, sep=" "))

origDataClean$DateTime <- dmy_hms(origDataClean$DateTime)

#Removing extra column
origDataClean$Date <- NULL
origDataClean$Time <- NULL

#Subsetting for relevant data
origDataClean <- subset(origDataClean, DateTime >= ymd("20070201") & DateTime < ymd("20070203"))


#Plot1
source("plot1.R")

#Plot2
source("plot2.R")

#Plot3
source("plot3.R")

#Plot4
source("plot4.R")


