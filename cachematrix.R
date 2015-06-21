## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#makeCacheMatrix takes in a matrix and returns a list of following functions:
  # "get" will simply tell the matrix being inverted
  # "set" will resets the matrix to be inverted to the arguement it takes
  # "getinverse" will determine if the matrix has been inverted yet
  # "setinverse" allows us to set the inverse of the matrix to its calculated inverse
  # therefore we will be able to tell if its inverted because the inv will no longer be NULL


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
# This functions take in an object created by the makeCacheMatrix function
# which is a matrix object that caches its inverse.
# It checks if this matrix has been inverted yet. If it were, 
# returns the already computed inverse
# If it were not inverted, it inverst the matrix, caches the inverse and
# returns it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getmean()
  if(!is.null(m)) {
      message("getting cached inverse")
      return(inv)
  }
  mat <- x$get()
  inv <- solve(mat)
  x$setinverse(inv)
  inv
}
