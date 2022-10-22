x <- c("a", "b", "c", "d", "a" )
x[1] #[]提取子集
x[1:4]
x[x> "a"] #比这个字母大的？
x[x> "1"] 
x[x> 1] 
u <- x> "a" #会对数列每个进行判断
u
x[u]


x <- list(foo = 1:4, bar= 0.6) #这里的list就是字典
x
x[1] #这里显示x的第一对数据
x[[1]] #这里显示的x第一对对应的数值
x[["foo"]] #这个就和下面一样了
x[[foo]] #error
x$foo #跟[[]]一样，一个是通过数字索引，一个是通过名字索引

x <- list(a=list(10, 11,12), b= c(3.14, 2.81, 15)) #数列之间的嵌套数列
x
x[[c(1, 3)]] #索引第一个数列的第三个
x[["a"]][[1]]
x[[c(2,1)]] #通过坐标索引
x[[c(2,1)]] #通过坐标索引，不能空索引

x <- matrix(1:6, 2, 3) #前面是数值，后两个是行列数字
x
x[1,2] #坐标索引
x[1,] #空坐标索引
x[,2] #空坐标索引
x[1,3, drop = FALSE]#通过drop= FALSE来索引坐标
x[1, , drop = FALSE]#通过drop= FALSE来索引坐标

#模糊匹配
x <- list(aarbcd = 1:5)
x
x$a #不完全输入也会匹配
x[["a"]] #这种需要完全匹配
x[["a", exact = FALSE]] #通过exact=FALSE来关闭精确匹配 

#去除NA数据
x <- c(1, 2, NA, 4, NA)
bad <- is.na(x) #得出na的位置
bad
x <- x[!bad] #相当于只留TRUE
x

x <- c(1, 2, 4) #以上的原理
c <- c(TRUE, TRUE, FALSE)
x <- x[c]
x
#complete,cases
c <- airquality[1:6, ]
good <- complete.cases(c) #得出缺失值的位置
good
c <- c[good, ]
c


