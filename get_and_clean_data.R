
library(data.table)
library(dplyr)
library(lubridate)  #strptime(), as.Date()?

# Read raw data from unzipped file, specifying semicolon as delimiter, clean column names, and load to tbl_df object for filtering
power <- tbl_df(read.table("exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", na.strings='?', header=TRUE,
                    col.names = c("Date", "Time", "GlobalActivePower", "GlobalReactivePower", "Voltage", "GlobalIntensity", "SubMetering1", "SubMetering2", "SubMetering3"),
                    colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
                    ))

# Filter tbl_df to days of interest only
power.tbl_df <- power %>%
  filter(Date=='1/2/2007'|Date=='2/2/2007')

# Create datetime column using lubridate and load tbl_df using new column instead of distinct date and time columns
power.tbl_df$DateTime <- dmy(power.tbl_df$Date)+hms(power.tbl_df$Time)
power.tbl_df <- power.tbl_df[,c(10,3:9)]
