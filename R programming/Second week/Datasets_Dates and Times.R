# Date
    x <- as.Date("1970-01-01") #crate a date class
    x
    class(x) #"Date"
# Times
    x <- Sys.time() #"2022-10-27 19:15:26 CST"
    x
    p <- as.POSIXlt(x)
    p
    names(unclass(p))
    weekdays(x) # "星期四"
    months(x) #"十月"
    quarters(x) #"Q4"
    unclass(x)  #POSIXct,the number before 1970-01-01 to x

# strptime
    datestring <- c("January 10, 2012 10:40", "Deccember 9, 2011 9:10")
    datestring
    x <- strptime("January 10, 2012 10:40", format = "%B %d, %Y %H:%M")
    x #false

# Times Operations
    x <- as.Date("2012-01-01")
    y <- as.Date("2011-12-03")
    x <- as.POSIXlt(x)
    y <- as.POSIXlt(y)
    x -y
    
    x <- as.POSIXct("2012-11-25 01:00:00")
    y <- as.POSIXct("2012-11-25 06:00:00", tz = "GMT") #caculate time zone
