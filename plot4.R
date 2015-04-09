##plot4.R

# Load data using source script and open graphics device
source('./Exploratory-Data-Analysis-Course-Project-1/get_and_clean.R')

# Make area with dimensions 2x2 in which to place 4 plots
par(mfrow=c(2,2))

# Plot data and write file per required height and width dimensions; augment font size with cex; close graphics device
 #Top left
plot(power.tbl_df$GlobalActivePower~power.tbl_df$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="",
     cex.lab=0.75, cex.axis=0.75)
 #Top right
plot(power.tbl_df$Voltage~power.tbl_df$DateTime, type="l", ylab="Voltage", xlab="",
     cex.lab=0.75, cex.axis=0.75)
#Bottom left
with(power.tbl_df,{
  plot(SubMetering1~DateTime, type='l', ylab='Energy sub metering', xlab='', col='Black',
       cex.lab=0.75, cex.axis=0.75)
  lines(SubMetering2~DateTime, col='Red')
  lines(SubMetering3~DateTime, col='Blue')
})

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, cex=0.75,
       legend=c("SubMetering1", "SubMetering2", "SubMetering3"))
 #Bottom right
plot(power.tbl_df$GlobalReactivePower~power.tbl_df$DateTime, type="l", ylab="Global_reactive_power", xlab="datetime",
     cex.lab=0.75, cex.axis=0.75)

# Write image to file with required dimensions and close graphics device
dev.copy(png, file="./Exploratory-Data-Analysis-Course-Project-1/plot4.png", height=480, width=480)
dev.off()