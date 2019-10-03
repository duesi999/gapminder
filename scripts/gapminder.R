# Kerensa 10:41
# 1. Open project in R studio
# 
# 10:41
# 2. Examine your environment. Do you need to recreate anything / load any libraries?
#   
#   10:41
# 3. Run some code - does it work?
#   
#   10:42
# 4. Using your gapminder data set, filter it to 1957 data only
# 
# 10:42
# 5. Summarise your new 1957 data frame to find the maximum gdp per cap, by continent

library(tidyverse)

gapminder <- read_csv("data/gapminder.csv")

gapminder %>% 
  filter(year == 1957) %>%
  group_by(continent) %>%
  summarise(max_gdpPercap = max(gdpPercap))
