x <- 1  ##赋值  
print(x)

msg <- "Hello"  ##赋字符串  
print(msg) 

seq <- 1:20 #赋数组
print(seq)

class(x) #属性
length(msg) #长度

#vectors 函数（组内的东西只能是一个class）
x1 <- c(0.5, 0.6) ##numeric
x2<- c(TRUE, FALSE) ##logical
x3 <- c("a", "b") ##character
x4 <- c(1+0i, 2+4i) ##complex
x1
x2
x3
x4
#vector类型装换
x <- 0:6
as.numeric(x) ##整数转换
as.logical(x) ##逻辑转换
as.character(x)  ##字符串转换

#list 函数 （组内任意组合，有一点像字典）
x <- list(1, "c", TRUE, 1+4i)
x[1] #(x的第x位，注意这里1就是1哦)
x.list

#Matrices矩阵
x <- matrix(nrow = 2, ncol = 3)
x <- matrix(1:6, nrow = 2, ncol = 3)
#数组拆分矩阵
m <- 1:20
dim(m) <- c(4, 5) ##dim必须与原有数值匹配
m
#cbind与rbind
x <- 1:3
y <- 10:12
c <- cbind(x, y) #竖着排
c
d <- rbind(x, y) #横着排
d

#factors 就是分类变量的集合，然后会给你区分出来
x <- factor(c("yes", "no", "yes"),
            level = c("yes","no"))
x
table(x)
unclass(x)

#NA缺失值, NAN未定义的运算
is.na(x) #检测是否为NA，因此NA为特殊词

#data.frame,不同行内容要相同，可以储存不同类型数据
x <- data.frame(var = 1:4, names = c("a", "b", "c", "d"))
x
nrow(x)
ncol(x)

#name 为字符串命名(改的其实是表头)
y <- 1:3
names(y) <- c("x","y","z")
y
x <- matrix(nrow = 2, ncol = 3)
dimnames(x) <- list(c("x","y"),c("a","b","c")) #矩阵命名
x


