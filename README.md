# tidytemplate

tidytemplate provides a custom [pkgdown](http://hadley.github.io/pkgdown/) template for core tidyverse packages (i.e. packages hosted by the [tidyverse organisation](http://github.com/tidyverse/haven)). Please don't use it for you own package.

The theme is built on top of the [paper bootswatch theme](https://bootswatch.com/paper/).

## Notes

To regenerate `tidyverse.css`, first install [sass](http://sass-lang.com/install), then run:

```bash
# gem install sass
sass scss/tidyverse.scss inst/assets/tidyverse.css
```
