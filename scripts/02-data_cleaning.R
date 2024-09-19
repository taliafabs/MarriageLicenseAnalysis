#### Preamble ####
# Purpose: Cleans the raw data from open data toronto
# Author: Talia Fabregas
# Date: September 19 2024
# Contact: talia.fabregas@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run 01-download_data.R first
# Any other information needed? No

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

clean_data <-
  raw_data |>
  janitor::clean_names() |>
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
         )

#### Save data ####
write_csv(clean_data, "data/analysis_data/marriage_data.csv")
