# Comparison between TAF and targets

The [TAF](https://cran.r-project.org/package=TAF) and [targets](https://cran.r-project.org/package=targets) packages have somewhat similar objectives, to organize and run scientific [workflows](https://cran.r-project.org/web/views/ReproducibleResearch.html#project-workflows)/[pipelines](https://cran.r-project.org/web/views/ReproducibleResearch.html#pipeline-toolkits).

A key distinction between the packages is that in `TAF` the user organizes their workflow by writing *scripts* that produce *files*, but in `targets` the user organizes their workflow by writing *functions* that produce *objects*, to be passed to the next step.

## taf-four-minutes

The [`targets-four-minutes`](https://github.com/wlandau/targets-four-minutes) example is a basic introduction to how pipelines are organized and run using the `targets` package. The similar `taf-four-minutes` analysis is a workflow organized and run using the `TAF` package. This facilitates comparing the functionality of the two packages.

## How to run

Install the TAF package from CRAN. Then open R in the `taf-four-minutes` directory and run:

```
library(TAF)
taf.boot()
source.all()
```

## More information

Another comparison between TAF and targets is provided by the [targets-rjm-347d](https://github.com/ices-taf-dev/targets-rjm-347d) example.

For an overview of the `TAF` package, see the [TAF vignette](https://cran.r-project.org/web/packages/TAF/vignettes/TAF.html).

For an overview of the `targets` package, see the [targets vignette](https://cran.r-project.org/web/packages/targets/vignettes/overview.html).
