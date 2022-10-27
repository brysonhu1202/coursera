# function

    #function 1
    add2 <- function(x, y){ #creat a new function
      x+y
    }
    add2(1, 2) #return 
    
    #111
    #function 2
    above <- function(x, n){
      use <- x > n #TRUE FALSE
      x[use] #filter
    }
    x <- 1:20
    above(x, 15)

    #function 3
    above <- function(x, n = 8){ #define n with default
      use <- x > n #TRUE FALSE
      x[use] #filter
    }
    x <- 1:20
    above(x)
    above(x, 15) #also can define n
    
    #function 4
    columnmean <- function(y, removeNA = TRUE){
      nc <- ncol(y) #number of col
      means <- numeric(nc) #creat a vector
      for(i in 1:nc){
        means[i] <- mean(y[, i], na.rm = removeNA) #mean of one col
      }#na.rm = extract NA 
      means
    }
    columnmean(airquality)
    columnmean(airquality, FALSE) #removeNA =false
    
    args(columnmean)  #understand what in function
    
    #lazy evaluation
    f <- function(a, b){
      print(a)
      print(b)
    }
    f(45) #Error in print(b) : 缺少参数"b",也没有缺省值

    #...
    args(paste)
    paste("a", "b", sep = "c")
    paste("a", "b", se="c") #se include ...