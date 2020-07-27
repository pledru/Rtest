#' a track object.
track <- setClass("track", slots = c(x="numeric", y="numeric"))
## an object from the class
t1 <- track(x = 1:10, y = 1:10 + rnorm(10))

## A class extending the previous, adding one more slot
trackCurve <- setClass("trackCurve",
    slots = c(smooth = "numeric"),
    contains = "track")

## an object containing a superclass object
t1s <- trackCurve(t1, smooth = 1:10)

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
#' @export
test_hashmap <- function() {
  x <- c(1,2,3,4)
  y <- c("1", "2", "3", "4")

  h <- hashmap(x, y)
  class(h)

  h$insert(8, "8")
}
