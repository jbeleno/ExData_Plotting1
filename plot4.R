source("loadData.R")

# get the Data
data <- selectData()

# I set a grid to plot and margins
par(mar = c(4,4,3,3))
par(mfcol=c(2,2))

# First graphic
plot(
    data$Datetime,
    data$Global_active_power,
    type="l",
    xlab = "",
    ylab = "Global Active Power (kilowatts)"
)

# Second graphic

## Plots the Sub_metering_1 variable along the time and adds labels 
plot(
    data$Datetime,
    data$Sub_metering_1,
    type="l",
    xlab = "",
    ylab = "Energy sub metering"
)

## Plots over the same graphic the Sub_metering_2 variable
lines(
    data$Datetime,
    data$Sub_metering_2,
    col="red"
)

## Plots over the same graphic the Sub_metering_3 variable
lines(
    data$Datetime,
    data$Sub_metering_3,
    col="blue"
)

## I add the legends
legend(
    "topright", 
    bty = "n",
    legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
    lty=1,
    col=c("black","red","blue"),
    cex = 0.7,
    pt.cex = 1,
    seg.len=0.5,
    xjust=1
)

# Third graphic: Voltage vs datetime
plot(
    data$Datetime,
    data$Voltage,
    type="l",
    xlab = "datetime",
    ylab = "Voltage"
)

# Fourth graphic: Global Reactive Power vs datetime
plot(
    data$Datetime,
    data$Global_reactive_power,
    type="l",
    xlab = "datetime",
    ylab = "Global_Reactive_Power"
)

dev.copy(png, file = "plot4.png", width=480, height=480)
dev.off()