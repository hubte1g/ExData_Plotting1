##plot3.R

# Load data using source script and open graphics device
source('./Exploratory-Data-Analysis-Course-Project-1/get_and_clean.R')

# Plot data and add legend
with(power.tbl_df,{
  plot(SubMetering1~DateTime, type='l', ylab='Energy sub metering', xlab='', col='Black',
       cex.lab=0.75, cex.axis=0.75)
  lines(SubMetering2~DateTime, col='Red')
  lines(SubMetering3~DateTime, col='Blue')
})

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, cex=0.75,
       legend=c("SubMetering1", "SubMetering2", "SubMetering3"))

# Write file per required height and width dimensions; close graphics device
dev.copy(png, file="./Exploratory-Data-Analysis-Course-Project-1/plot3.png", height=480, width=480, units='px')
dev.off()