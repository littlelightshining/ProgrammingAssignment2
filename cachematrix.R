## The pair of functions below cache the inverse of a matrix

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
  set <- function(y) {
          x <<- y
         inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)         
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(i)
  inv        
}
