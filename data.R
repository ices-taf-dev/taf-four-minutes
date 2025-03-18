# Preprocess data, write TAF data tables

# Before: data.csv (boot/data)
# After:  new_york.csv (data)

library(TAF)
library(dplyr, warn.conflicts=FALSE)
library(readr)

mkdir("data")

new_york <- read_csv("boot/data/data.csv", col_types=cols()) %>%
  filter(!is.na(Ozone))

write_csv(new_york, "data/new_york.csv")
