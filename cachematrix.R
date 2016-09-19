## Put comments here that give an overall description of what your
## functions do

## The first function creates a matrix that can cache its inverse. The second function
##computes the inverse of the matrix.



## Write a short comment describing this function
## This function creates a matrix that can cache its inverse. 

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x

      setSolve <- function(solve) m <<- solve
      getSolve <- function() m
      list(set = set, get = get,
           setSolve = setSolve,
           getSolve = getSolve)
}




## Write a short comment describing this function
## This function computes the inverse of the matrix.
## If the inverse has already been calculated , then the function retrive the inverse from the cache


cacheSolve <- function(x, ...) {
      m <- x$getSolve()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setSolve(m)
      m
}
