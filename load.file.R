## Exploratory Data Analysis
## Project 1 - Load file function
## by Tomas Mawyin

library(dplyr)

# Function used to load the file and return the dataframe
load.file <- function(){
    # Selecting only the required data, i.e., from 2007-02-01 to 2007-02-02
    df <- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE) %>%
          tbl_df() %>% 
          filter(Date == '1/2/2007' | Date == '2/2/2007')
    
    ## Converting data and time variables to appropiate classes
    df$Date <- as.Date(df$Date, "%d/%m/%Y")
    df$Time <- strptime(paste(df$Date, df$Time, sep=" "), format='%Y-%m-%d %H:%M:%S')
    
    ## Converting all other columns to numeric
    df <- transform(df, Global_active_power = as.numeric(Global_active_power),
                    Global_reactive_power = as.numeric(Global_reactive_power),
                    Voltage = as.numeric(Voltage),
                    Global_intensity = as.numeric(Global_intensity),
                    Sub_metering_1 = as.numeric(Sub_metering_1),
                    Sub_metering_2 = as.numeric(Sub_metering_2))
    
    df
}

