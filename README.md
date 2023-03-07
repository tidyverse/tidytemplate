
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidytemplate <img src="man/figures/logo.png" align="right" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/tidyverse/tidytemplate/workflows/R-CMD-check/badge.svg)](https://github.com/tidyverse/tidytemplate/actions)
[![Check
accessibility](https://img.shields.io/badge/check-accessibility-orange.svg)](http://wave.webaim.org/report#/http://tidytemplate.tidyverse.org)
<!-- badges: end -->

## Overview

tidytemplate provides a custom [pkgdown](https://pkgdown.r-lib.org)
template for tidyverse, r-lib, tidymodels, and rmarkdown packages.
Please don’t use it for your own package.

## Templates

For all sites, ensure that `DESCRIPTION` contains:

    Config/Needs/website: tidyverse/tidytemplate

### tidyverse and r-lib

``` yaml
template:
  package: tidytemplate
  bootstrap: 5
  
  includes:
    in_header: |
      <script defer data-domain="{YOUR DOMAIN},all.tidyverse.org" src="https://plausible.io/js/plausible.js"></script>
      
development:
  mode: auto
```

Ping Hadley on slack to get your site added to plausible.

### tidymodels

``` yaml
template:
  package: tidytemplate
  bootstrap: 5
  bslib:
    primary: "#CA225E"

  includes:
      in_header: |
        <script defer data-domain="{YOUR DOMAIN},all.tidymodels.org" src="https://plausible.io/js/plausible.js"></script>  
```

Ping Hadley on slack to get your site added to plausible.

### rmarkdown / quillt

``` yaml
template:
  package: tidytemplate
  bootstrap: 5
  
  bslib:
    primary: "#096B72"
    navbar-background: "#e6f3fc"
  trailing_slash_redirect: true
```

If you need to add a subdomain for your package at a Posit domain (e.g.,
`{pkg}.tidyverse.org`, `{pkg}.r-lib.org`, `{pkg}.tidymodels.org`), then
follow these steps:

``` md
* [ ] Submit a PR [here](https://github.com/rstudio/aws-main/tree/main/zones) \\
      adding your site to the appropriate domain (eg., r-lib, tidyverse, tidymodels)
* [ ] Set url in GitHub Settings > Pages > Custom Domain
* [ ] Run `usethis::use_pkgdown_github_pages()`. This will automatically:
  * Add `url: https://{pkgname}.{domain}.org` to `_pkgdown.yml`. It will \\
    overwrite much of your customized `_pkgdown.yml` but you can use the \\
    git diff to restore the necessary bits.
  * Add the URL in DESCRIPTION.
  * Update the homepage in the "About" section of the package's GitHub page
* [ ] `devtools::document()`
```

### Updating

If you’re updating from a previous pkgdown config, use the following
checklist to make sure everything is up to date:

``` md
* [ ] `usethis::use_pkgdown_github_pages()`
* [ ] Ensure Author includes RStudio as copyright holder and funder
* [ ] Update `DESCRIPTION` to include `Config/Needs/website: tidyverse/tidytemplate`
* [ ] Update `_pkgdown.yml` with appropriate template above.
* [ ] Ping Hadley to add plausible.io record
* [ ] Remove `strip_header: true`
* [ ] Remove algolia search, if used
* [ ] Eliminate superseded navbar customisation (`home: ~`, article re-ordering)
* [ ] Update `news` structure if needed
* [ ] Remove any author info for tidyverse folks (since now included in template)
* [ ] If you need to re-publish a released site; see [How to update a released site](https://pkgdown.r-lib.org/dev/articles/how-to-update-released-site.html)
```
