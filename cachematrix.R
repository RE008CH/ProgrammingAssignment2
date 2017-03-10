## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  objInverse <- NULL
  set <- function(y) {
    x <<- y
    objInverse <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) objInverse <<- inverse
  getInverse <- function() objInverse
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  objInverse <- x$getInverse()
  if (!is.null(objInverse)) {
    return(objInverse)
  }
  mat <- x$get()
  objInverse <- solve(mat, ...)
  x$setInverse(objInverse)
  objInverse
}
