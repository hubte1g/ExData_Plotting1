##plot1.R

# Load data using source script and open graphics device
source('./Exploratory-Data-Analysis-Course-Project-1/get_and_clean.R')

# Plot data and write file per required height and width dimensions; close graphics device
hist(power.tbl_df$GlobalActivePower, main='Global Active Power', xlab='Global Active Power (kilowatts)', col='red',
     cex.lab=0.75, cex.axis=0.75, cex.main=.9)
dev.copy(png, file="./Exploratory-Data-Analysis-Course-Project-1/plot1.png", height=480, width=480)
dev.off()