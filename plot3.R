## Exploratory Data Analysis
## Project 1 - Figure 3
## by Tomas Mawyin

## This code generates a three plots in one to show the Energy Sub Meterings
## with respect to time

## Loading the appropiate date
source("load.file.R")
df <- load.file()

## Generate the first plot
par(mfrow = c(1,1))
with(df, {plot(Time, Sub_metering_1, type = "l", col = "black",
              ylab = "Energy sub metering")
    lines(Time, Sub_metering_2, type = "l", col = "orange", ylab = NA)
    lines(Time, Sub_metering_3, type = "l", col = "blue", ylab = NA)})

## Let's add the legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1,1,1), lwd = c(1,1,1), col = c("black","orange","blue"), cex = 0.7)

## Let's save the png file
dev.copy(png, filename = "plot3.png", width=480, height=480, units="px")
dev.off()
