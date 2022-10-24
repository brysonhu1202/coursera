# if else
    if( 1 == 1 ){ #condition#
      ##do something
    }else if(2 ==2){ #condition#
     ## 
    }else{
      ##do something else
    }
      #表示方式1
      if(x > 3){
        y <- 10
      }else{
        y <-0
      }
      #表示方式2
      y <- if(x <3){
        10
      }else{
        0
      }

      
#for loops
    for(i in 1:10){
      print(i)
    }
    x <- c("a", "b", "c", "d")
    
    for( i in 1:4 ){  #loop vector x form1
      print(x[i])
    }
    for(i in seq_along(x)){ #loop vector x form2
      print(x[i])
    }
    for( letter in x){ #loop vector x form3
      print(letter)
    }
    for(i in 1:4) print(x[i]) #loop vector x form4
    # for 嵌套
    x <- matrix(1:6, 2,3)
    for( i in seq_len(nrow(x))){
      for(j in seq_len(ncol(x))){
        print(x[i, j])
      }
    }
    
# while loops
    count <- 0
    while(count < 10){ #while  TRUE 为继续
      print(count)
      count <- count + 1
    }
    
# repeat loops 
    x0 <- 1
    tol <- 1e-8
    repeat { #never stop
      x1 <- computeEstimate()
      if (abs(x1 - x0) < tol){
        break
      }else {
         x0 <- x1
      }
    }
    
# next & return
    for(i in 1:100){
      if(i <= 20 | i >= 80 ){
        next #skip but next
      }
      else if (i == 60){
        return() #exit
      }
      print(i)
    }
    