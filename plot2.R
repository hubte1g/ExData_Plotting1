##plot2.R

# Load data using source script and open graphics device
source('./Exploratory-Data-Analysis-Course-Project-1/get_and_clean.R')

# Plot data and write file to directory per required height and width dimensions; close graphics device
plot(power.tbl_df$GlobalActivePower~power.tbl_df$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="",
     cex.lab=0.75, cex.axis=0.75)
dev.copy(png, file="./Exploratory-Data-Analysis-Course-Project-1/plot2.png", height=480, width=480)
dev.off()