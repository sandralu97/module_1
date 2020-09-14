########################
#September, 2020
#Sandra Lu
#
#session 1: building block
########################

#this code = variable assignments!

x = 2+3 #execute = crtl+enter

y = c(1,3,6,12)
y
x+y

x = runif (n=20) #generate random number
mean(x)
var(x)

##data frame
install.packages("tidyverse")
library(tidyverse)

example_df = tibble(
  vec_numeric = 1:4,
  vec_char =c("My", "name","is", "sandra"),
  vec_factor = factor(c("male","male","female","male"))
  #binary variable?
)

example_df

##make a df & plots

plot_df=tibble(
  x=rnorm(1000,sd = 0.5),
  y = 1+ 2*x+rnorm(1000),
  y_quad = 1+2*x - 3*x^2 +rnorm(1000)
)

ggplot(plot_df, aes(x=x)) + geom_histogram()

ggplot (plot_df, aes(x=x,y=y)) + geom_point()

ggplot (plot_df, aes(x = x,y = y_quad)) + geom_point()
