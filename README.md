# tidytemplate

tidytemplate provides a custom [pkgdown](https://pkgdown.r-lib.org) template for core tidyverse packages (i.e. packages hosted by the [tidyverse organisation](https://github.com/tidyverse)). Please don't use it for your own package.

The theme is built on top of the [paper bootswatch theme](https://bootswatch.com/3/paper/).

## Notes

`tidyverse.css` is generated from files in `scss`. Regenerate with this code:

```R
# devtools::install_github("rstudio/sassr")
library(sassr)
compile_sass(
  "scss/tidyverse.scss",
  output = "inst/pkgdown/assets/tidyverse.css",
  options = sass_options(output_style = "nested")
)
```

