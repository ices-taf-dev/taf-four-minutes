# Comparison between TAF and targets

The [TAF](https://cran.r-project.org/package=TAF) and [targets](https://cran.r-project.org/package=targets) packages have somewhat similar objectives, to organize and run scientific [workflows](https://cran.r-project.org/web/views/ReproducibleResearch.html#project-workflows)/[pipelines](https://cran.r-project.org/web/views/ReproducibleResearch.html#pipeline-toolkits).

A key distinction between the packages is that in `TAF` the user organizes their workflow by writing *scripts* that produce *files*, but in `targets` the user organizes their workflow by writing *functions* that produce *objects*, to be passed to the next step. Thus, the two packages present two different paradigms with a similar end result.

In TAF, the workflow structure is predetermined as the main scripts will always be named `data.R`, `model.R`, `output.R`, and `report.R`. After running a TAF analysis, one can always expect to find the data and results in CSV format in the corresponding `data`, `output`, and `report` folders.

In contrast, the `targets` package does not confine the user to use a predetermined workflow design, and tables containing data and results are generally accessed by the user as R objects rather than files.

The purpose of the `taf-four-minutes` and `targets-rjm-347d` repositories is to facilitate comparing the functionality of the two packages.

## taf-four-minutes

This [taf-four-minutes](https://github.com/ices-taf-dev/taf-four-minutes) analysis is a simple workflow organized and run using the `TAF` package. It is similar to the [targets-four-minutes](https://github.com/wlandau/targets-four-minutes) demonstration of how pipelines are organized and run using the `targets` package.

## How to run

Install the TAF package from CRAN. Then open R in the `taf-four-minutes` directory and run:

```
library(TAF)
taf.boot()
source.all()
```

## Browsing or reviewing the analysis

After running the workflow, the following files can be browsed and reviewed:

File                 | Purpose
-------------------- | ---------------------------------
`boot/DATA.bib`      | data description
`boot/data/data.csv` | original data (n=153)
`data/new_york.csv`  | data used in the analysis (n=116)
`output/coefs.csv`   | regression coefficients
`report/fit.png`     | regression plot

## See also

Another comparison between TAF and targets is provided by the [targets-rjm-347d](https://github.com/ices-taf-dev/targets-rjm-347d) example.

For an overview of the `TAF` package, see the [TAF vignette](https://cran.r-project.org/web/packages/TAF/vignettes/TAF.html).

For an overview of the `targets` package, see the [targets vignette](https://cran.r-project.org/web/packages/targets/vignettes/overview.html).
