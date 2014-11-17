## Below are two functions that are used to create a special object that stores a matrix and caches its inverse

## Create a list of function to set/get the matrix, and set/get the inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  seti <- function(v) i <<- v
  geti <- function() i
  list(set = set, get = get,
       seti = seti,
       geti = geti)
}


## Calculate the inverse of matrix and store to cache

cacheSolve <- function(x, ...) {
  i <- x$geti()
  if(!is.null(i)) i
  data <- x$get()
  i <- solve(data,...)
  x$seti(i)
  i
}
