#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Talia Fabregas
# Date: 19 September 2024
# Contact: talia.fabregas@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? No


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
package <- show_package("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")
resources <- list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))
raw_marriage_data <- filter(datastore_resources, row_number()==1) %>% get_resource()

#### Save data ####
write_csv(raw_marriage_data, "data/raw_data.csv") 

         
