#' Measure the width of the console
#'
#' @param width Width of rule
#' @export
#' @examples
#' ruler()
ruler <- function(width = getOption("width")) {
  x <- seq_len(width)
  y <- rep("-", length(x))

  y[x %% 5 == 0] <- "+"
  y[x %% 10 == 0] <- as.character((x[x %% 10 == 0] %/% 10) %% 10)

  cat(y, "\n", sep = "")
  cat(x %% 10, "\n", sep = "")
}
