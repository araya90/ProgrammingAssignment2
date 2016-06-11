## First we write the function to Cache the inverse of the Matrix.
## This function will help Cache the matrix inversion instead of having to repeat the funtion again. It will store the matrix and essentially cashe the inverse.

## In this function creates a matrix that will cache the inverse as well.
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse.
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
makeCacheMatrix("c:/User/Sarah/Desktop/Coursera/specdata")
## With this function, it computes the inverse of the matrix that was created in the function above. This will return the inverse from the cache.
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
makeCacheMatrix("C:/User/Sarah/Desktop/Coursera/specdata")

x = rbind(c(1, -1/4), c(-1/4, 1))
m = makeCacheMatrix(x)
m$get()

cacheSolve(m)

cacheSolve(m)
