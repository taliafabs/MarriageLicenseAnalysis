#### Preamble ####
# Purpose: Simulates Toronto marriage data
# Author: Talia Fabregas
# Date: 19 September 2024
# Contact: talia.fabregas@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? No


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



