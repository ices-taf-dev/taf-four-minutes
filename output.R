# Extract results of interest, write TAF output tables

# Before: coefs.rds (model)
# After:  coefs.csv (output)

library(TAF)
library(dplyr, warn.conflicts=FALSE)
library(readr)

mkdir("output")

coefs <- readRDS("model/coefs.rds") %>%
  t() %>%
  as_tibble() %>%
  rename(intercept=`(Intercept)`, slope=Temp)

write_csv(coefs, "output/coefs.csv")
