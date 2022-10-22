#read data
initial <- read.csv2("text.csv") #读取表格
classes <- sapply(initial, class) #m每一列的数值类型
initial
classes
readLines("text.csv") #逐行读取文本文件
source() #读取R代码

#Writing data
#讲的不多

#dump 导出在引入
x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x","y"), file = "data.R")
source("data.R")
y
x

#文件交互
text <- file("text.csv", "r") #读取文件
text #此时文件仅仅是文件属性
read.csv(text) #进行文件内容的读取
close(text)

url <- url("http://www.nofakenews.cn", "r")#读取网站
url
x <- readLines(url)