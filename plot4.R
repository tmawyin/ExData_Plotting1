## Exploratory Data Analysis
## Project 1 - Figure 4
## by Tomas Mawyin

## This generates 4 subplots to show different results

## Loading the file
source("load.file.R")
df <- load.file()

## Setting up the subplot, we will keep the default margins
par(mfcol = c(2,2))#, mar = c(5,4.1,2,4))

## Let's generate the first plot:
with(df, plot(Time, Global_active_power, type = "l",
              ylab = "Global Active Power (kilowatts)",
              main = NA, xlab = NA))


## Generate the next plot on the second row, first column
with(df, {plot(Time, Sub_metering_1, type = "l", col = "black",
               ylab = "Energy sub metering")
    lines(Time, Sub_metering_2, type = "l", col = "orange", ylab = NA)
    lines(Time, Sub_metering_3, type = "l", col = "blue", ylab = NA)})
## Let's add the legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1,1,1), lwd = c(1,1,1), col = c("black","orange","blue"), 
       bty = "n", cex=0.6)

## Adding the 3rd plot
with(df, plot(Time, Voltage, type = "l",
              ylab = "Voltage",
              main = NA, xlab = "datetime"))

## The final plot
with(df, plot(Time, Global_reactive_power, type = "l",
              main = NA, xlab = "datetime"))

## Let's save the png file
dev.copy(png, filename = "plot4.png", width=480, height=480, units="px")
dev.off()

