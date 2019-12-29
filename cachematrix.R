## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this is a function that creates special objects that will store the matrix and the inverse of them
## There are different getter and setter methods for the matrix
## It also contains different getter and setter methods for finding inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(tp) {
    x <<- t
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inv_t) inv <<- inv_t
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function
## This is a function that will find the inverse of the matrix or return the 
# the inverse value stored in the cache 
## It finally returns the inverse of matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      tmat <- x$getinv()
      if(!is.null(tmat)) {
        message("getting cached data")
        return(tmat)
      }
      data <- x$get()
      m <- inv(data, ...)
      x$setinv(m)
      m
}
