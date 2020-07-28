#' Test zero
#' @importFrom methods setClass
#' @importFrom stats rnorm
test_zero <- function() {
  track <- setClass("track", slots = c(x = "numeric", y = "numeric"))
  t1 <- track(x = 1:10, y = 1:10 + rnorm(10))

  track_curve <- setClass("track_curve",
      slots = c(smooth = "numeric"),
      contains = "track")

  t1s <- track_curve(t1, smooth = 1:10)
  t1s
}

#' Make ATAC CDS object
#'
#' This function takes as input a data frame or a path to a file in a sparse
#' matrix format and returns a properly formatted \code{CellDataSet} (CDS)
#' object.
#'
#' @export
test_it <- function() {
    print("test it...")
}

#' Test a hashmap
#'
#' This function tests a hashmap.
#'
#' @importFrom hashmap hashmap
#' @export
test_hashmap <- function() {
  x <- c(1, 2, 3, 4)
  y <- c("1", "2", "3", "4")

  h <- hashmap(x, y)
  class(h)

  h$insert(8, "8")
}

#' Test a graph
#'
#' This function tests a graph.
#'
#' @importFrom ggplot2 aes ggplot geom_point
#' @export
test_graph <- function() {
  x <- sample(1:10, 20, replace = TRUE)
  y <- sample(1:10, 20, replace = TRUE)

  states <- c("AL", "AK", "AR", "CA", "CO", "MA", "MO", "NC", "NY", "RI")
  s <- sample(states, 20, replace = TRUE)

  data <- data.frame(
    name = s,
    x = x,
    y = y)

  ggplot(data = data) + geom_point(mapping = aes(x = x, y = y, color = s))
}
