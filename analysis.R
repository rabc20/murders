library(tidyverse)
load("rda/murders.rda")

m <- murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb,rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "blue") +
  coord_flip()


print(m)
print(murders)
