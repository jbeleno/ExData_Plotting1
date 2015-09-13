# Important note: For execute this file is necessary to download sqldf package
# available in: https://cran.r-project.org/web/packages/sqldf/index.html
# also is necessary the gsubfn package available in:
# https://cran.r-project.org/web/packages/gsubfn/index.html
# and also requiered the RSQLite packeage available in:
# https://cran.r-project.org/web/packages/RSQLite/index.html
# and finally chron available in:
# https://cran.r-project.org/web/packages/chron/index.html


# This method gets the data taken from 2007-02-01 until 2007-02-02, using sqldf
# package, because this subset the data before loading into R
selectData <- function(){
    library(sqldf)
    data <- read.csv.sql(
        file= "household_power_consumption.txt", 
        sql = 'select * from file where Date = "1/2/2007" or Date = "2/2/2007"',
        sep = ";"
    )
    
    # Merge data and time in a variable
    data$Datetime <- strptime(
        paste(data$Date, data$Time), 
        format="%d/%m/%Y %H:%M:%S"
    )
    
    data
}