source("loadData.R")

# get the Data
data <- selectData()

# Plots an histogram with Global_active_power variable and adds labels and colors
# and save it as PNG file
hist(as.numeric(data$Global_active_power), 
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     xlim = c(0,6)
)
dev.copy(png, file = "plot1.png", width=480, height=480)
dev.off()