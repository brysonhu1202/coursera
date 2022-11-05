setwd("specdata")
getwd()
specdata <- list.files()
####
#哎，个人无能，只能做到单数
####
pollutantmean <- function(pollutant, id = 1){
 # finalmean <- vector()
 # for(x in id){
    id1 <- read.csv(specdata[id]) #读取文件
    id2 <- na.omit(id1) #去除NA
    id3 <- data.matrix(id2) #格式转换为matrix
    id4 <- data.matrix(colMeans(id3)) # 求mean后格式转换matrix
  if(pollutant == "sulfate"){
    num <- id4[2]
    }else if(pollutant == "nitrate"){
    num <- id4[3]  
    }
  return(num)
#    append(finalmean, num)
#    finalmean
#    }
#  return(mean(finalmean))
}
pollutantmean("sulfate",4)

