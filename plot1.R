## Exploratory Data Analysis
## Project 1 - Figure 1
## by Tomas Mawyin

## This code generates a histogram of the Global Active Power variable

## Loading the appropiate date
source("load.file.R")
df <- load.file()

## Generating the base histogram
par(mfrow = c(1,1))
with(df, hist(Global_active_power, col = "orangered3", 
              xlab = "Global Active Power (kilowatts)", 
              main = "Global Active Power"))

## Let's save the png file
dev.copy(png, filename = "plot1.png", width=480, height=480, units="px")
dev.off()
