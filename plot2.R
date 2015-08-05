## Exploratory Data Analysis
## Project 1 - Figure 2
## by Tomas Mawyin

## This code generates a line plot: Global Active Power vs Time

## Loading the appropiate date
source("load.file.R")
df <- load.file()

## Generating the plot - type is line
par(mfrow = c(1,1))
with(df, plot(Time, Global_active_power, type = "l",
              ylab = "Global Active Power (kilowatts)",
              main = NA, xlab = NA))

## Let's save the png file
dev.copy(png, filename = "plot2.png", width=480, height=480, units="px")
dev.off()
