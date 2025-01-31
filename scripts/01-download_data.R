#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

library(opendatatoronto)
library(dplyr)

#### Download data ####
package <- show_package("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")
resources <- list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))
raw_marriage_data <- filter(datastore_resources, row_number()==1) %>% get_resource()

#### Save data ####
write_csv(raw_marriage_data, "data/raw_data/raw_data.csv") 

