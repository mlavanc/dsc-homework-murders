library(tidyverse)
load("rdas/murders.rda")

#plot     
murders %>% mutate(abb = reorder(abb, rate)) %>%
   ggplot(aes(abb, rate)) +
   geom_bar(width = 0.5, stat = "identity", color = "black") +
   coord_flip()

#save the plot
ggsave("figs/barplot.png")
     