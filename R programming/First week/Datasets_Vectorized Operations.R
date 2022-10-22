x <- 1:4; y <- 6:9
x + y
x - y
x > 2
x < 2
x == 8
x * y
x / y

#矩阵计算
x <- matrix(1:4, 2, 2); y <- matrix(rep(10, 4), 2, 2)
x
y
x * y #每个位置进行相乘
x / y
x %*% y #正确的矩阵相乘 但是没看懂

x <- c(1, 2, 3)
y <- c(2, 3, 4)
rbind(x, y)