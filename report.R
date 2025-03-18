# Prepare plots and tables for report

# Before: new_york (data), coefs.csv (output)
# After:  fit.png (report)

library(TAF)
library(ggplot2)
library(readr)

mkdir("report")

new_york <- read_csv("data/new_york.csv", col_types=cols())
coefs <- read_csv("output/coefs.csv", col_types=cols())

taf.png("fit")
p <- ggplot(new_york) +
  geom_point(aes(x=Temp, y=Ozone)) +
  geom_abline(intercept=coefs[[1]], slope=coefs[[2]]) +
  theme_gray(24)
plot(p)
dev.off()
