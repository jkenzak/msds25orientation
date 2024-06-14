library(tidyverse)

data <- data.frame(val = rnorm(10000))

ggplot(data, aes(x = val)) + geom_histogram()
