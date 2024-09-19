#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)

#### Test data ####

# Test 1: Test that all marriages occured in the chosen date range
data <- read_csv("data/raw_data/simulated.csv")

# Test 2: Test that no date has fewer than 0 marriage licenses issued
data$number_of_marriage |> min() <= 0

all(is.na(data$number_of_marriage))