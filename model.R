# Run analysis, write model results

# Before: new_york.csv (data)
# After:  coefs.rds (model)

library(TAF)
library(dplyr, warn.conflicts=FALSE)
library(readr)

mkdir("model")

new_york <- read_csv("data/new_york.csv", col_types=cols())

coefs <- lm(Ozone~Temp, new_york) %>%
  coefficients()

saveRDS(coefs, "model/coefs.rds")
