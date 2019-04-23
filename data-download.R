#download data
url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"
dest_file <- "data/murders.csv"
download.file(url, destfile = dest_file)

#loading libraries
library(tidyverse)

#saving data
murders <- read_csv("data/murders.csv")
murders <-murders %>% mutate(region = factor(region),
                             rate = total / population * 10^5)
save(murders, file = "rdas/murders.rda")
