
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidytemplate <img src="man/figures/logo.png" align="right" />

[![Travis build
status](https://travis-ci.org/tidyverse/tidytemplate.svg?branch=master)](https://travis-ci.org/tidyverse/tidytemplate)

## Overview

tidytemplate provides a custom [pkgdown](https://pkgdown.r-lib.org)
template for core tidyverse packages (i.e. packages hosted by the
[tidyverse organisation](https://github.com/tidyverse)). Please don’t
use it for your own package.

The theme is built on top of the [paper bootswatch
theme](https://bootswatch.com/3/paper/).

## Notes

`tidyverse.css` is generated from files in `scss`. Regenerate with this
code:

``` r
# devtools::install_github("rstudio/sassr")
library(sassr)
compile_sass(
  "scss/tidyverse.scss",
  output = "inst/pkgdown/assets/tidyverse.css",
  options = sass_options(output_style = "nested")
)
```
