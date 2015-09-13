source("loadData.R")

# get the Data
data <- selectData()

# First merge the date with hours and plots the Global_active_power variable 
# along the time and adds labels and save it as PNG file
plot(
    data$Datetime,
    data$Global_active_power,
    type="l",
    xlab = "",
    ylab = "Global Active Power (kilowatts)"
)
dev.copy(png, file = "plot2.png", width=480, height=480)
dev.off()