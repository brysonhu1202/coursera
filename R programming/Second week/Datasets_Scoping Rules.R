# not understand
make.power <- function(n){
  pow <- function(x){
    x^n
  }
  pow
}

cube <- make.power(3) #save function
squra <- make.powe(2)
cube(3)
squra(2)

ls(environment(cube))
get("n",environment(cube))

ls(environment(squra))
get("n",environment(cube))

y <- 10
f <- function(x){ #y in environment
  y <- 2
  y ^ 2 + g(x)
}
g <- function(x){
  x*y
}