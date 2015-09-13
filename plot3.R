source("loadData.R")

# get the Data
data <- selectData()

# Plots the Sub_metering_1 variable along the time and adds labels 
plot(
    data$Datetime,
    data$Sub_metering_1,
    type="l",
    xlab = "",
    ylab = "Energy sub metering"
)

# Plots over the same graphic the Sub_metering_2 variable
lines(
    data$Datetime,
    data$Sub_metering_2,
    col="red"
)

# Plots over the same graphic the Sub_metering_3 variable
lines(
    data$Datetime,
    data$Sub_metering_3,
    col="blue"
)

# I add the legends
legend(
    "topright", 
    legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
    lty=1,
    col=c("black","red","blue"),
    cex = 0.95,
    pt.cex = 0.9,
    seg.len=0.5,
    xjust=1
)

dev.copy(png, file = "plot3.png", width=480, height=480)
dev.off()