
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidytemplate <img src="man/figures/logo.png" align="right" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/tidyverse/tidytemplate/workflows/R-CMD-check/badge.svg)](https://github.com/tidyverse/tidytemplate/actions)
[![Check
accessibility](https://img.shields.io/badge/check-accessibility-orange.svg)](http://wave.webaim.org/report#/http://tidytemplate.tidyverse.org)
<!-- badges: end -->

## Overview

tidytemplate provides a custom [pkgdown](https://pkgdown.r-lib.org)
template for [tidyverse packages](https://github.com/tidyverse).

Please don’t use it for your own package.

## Using tidytemplate

Add the following to `_pkgdown.yaml`:

``` yaml
template:
  package: tidytemplate
  bootstrap: 5
```

Add the following to `DESCRIPTION`:

    Config/needs/website: tidyverse/tidytemplate
