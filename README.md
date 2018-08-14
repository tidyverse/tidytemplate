# tidytemplate

tidytemplate provides a custom [pkgdown](https://pkgdown.r-lib.org) template for core tidyverse packages (i.e. packages hosted by the [tidyverse organisation](https://github.com/tidyverse)). Please don't use it for your own package.

The theme is built on top of the [paper bootswatch theme](https://bootswatch.com/3/paper/).

## Notes

To regenerate `tidyverse.css`, first install [sass](https://sass-lang.com/install), then run:

```bash
# gem install sass
sass scss/tidyverse.scss inst/pkgdown/assets/tidyverse.css
```
