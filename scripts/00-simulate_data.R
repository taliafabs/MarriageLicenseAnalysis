#### Preamble ####
# Purpose: Simulates Toronto Marriage License data
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)

start_date <- as.Date("2019-01-01")
end_date <- as.Date("2023-12-31")
set.seed(304)

#### Simulate data ####
simulated_data <- tibble(
  date = as.Date(start_date + round(runif(1, 0, as.numeric(end_date - start_date)))),
  num_marriages = rpois(n = 100, lambda = 15)
)



